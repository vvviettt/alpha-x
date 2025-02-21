import { Injectable, UnauthorizedException } from '@nestjs/common';
import { CheckEmailExistData, LoginData, RegisterData } from './auth.dto';
import { PrismaService } from 'src/prisma/prisma.service';
import * as argon2 from 'argon2';
import { JwtService } from '@nestjs/jwt';
import Redis from 'ioredis';
import { InjectRedis } from '@nestjs-modules/ioredis';
import {
  generateBlacklistAccessTokenKey,
  generateBlacklistRefreshTokenKey,
} from 'src/common/utils/redis';
import * as crypto from 'crypto-js';
import dayjs from 'dayjs';
import ms from 'ms';
import { RequestWithRefreshToken } from 'src/common/types/http';
import { now } from 'lodash';
@Injectable()
export class AuthService {
  constructor(
    private readonly prisma: PrismaService,
    private readonly jwtService: JwtService,
    @InjectRedis() private readonly redis: Redis,
  ) {}

  async generateJwtAccessToken(data: any, ttl: string = '1h') {
    return {
      token: await this.jwtService.signAsync(data, {
        secret: process.env.JWT_ACCESS_TOKEN_SECRET,
        expiresIn: ttl,
      }),
      expireAt: dayjs().add(ms(ttl), 'milliseconds').toISOString(),
    };
  }
  async generateJwtRefreshToken(data: any, ttl: string = '7d') {
    return {
      token: await this.jwtService.signAsync(data, {
        secret: process.env.JWT_REFRESH_TOKEN_SECRET,
        expiresIn: ttl,
      }),
      expireAt: dayjs().add(ms(ttl), 'milliseconds').toISOString(),
    };
  }

  async checkEmailExist(data: CheckEmailExistData) {
    const user = await this.prisma.user.findFirst({
      where: { email: data.email },
    });
    return { isExist: !!user };
  }

  async createUser(data: RegisterData) {
    await this.prisma.user.create({
      data: {
        email: data.email,
        password: await argon2.hash(data.password),
        firstName: data.firstName,
        lastName: data.lastName,
        dateOfBirth: data.dateOfBirth,
        avatarUrl: data.avatar,
      },
    });

    return { status: 'OK' };
  }

  async login(data: LoginData) {
    const user = await this.prisma.user.findUnique({
      where: { email: data.email },
    });
    if (user && (await argon2.verify(user.password, data.password))) {
      delete user.password;
      const accessToken = await this.generateJwtAccessToken({
        userId: user.id,
      });
      const refreshToken = await this.generateJwtRefreshToken({
        userId: user.id,
        accessToken: crypto.SHA256(accessToken.token).toString(crypto.enc.Hex),
        accessExp: accessToken.expireAt,
      });

      return {
        token: {
          accessToken: accessToken.token,
          refreshToken: refreshToken.token,
        },
        user,
      };
    }
    throw new UnauthorizedException();
  }

  async refreshToken(
    refreshToken: string,
    user: RequestWithRefreshToken['user'],
  ) {
    await this.prisma.user.findFirstOrThrow({
      where: {
        id: user.userId,
      },
    });

    const accessTokenKey = generateBlacklistRefreshTokenKey(user.accessToken);
    const accessTtl = dayjs(user.accessExp).diff(now(), 'seconds');
    if (accessTtl > 0) {
      await this.redis.set(accessTokenKey, 1, 'EX', accessTtl);
    }
    await this.redis.set(
      generateBlacklistRefreshTokenKey(this.hashToken(refreshToken)),
      1,
      'EX',
      dayjs(user.exp).diff(now(), 'seconds'),
    );
    const accessToken = await this.generateJwtAccessToken({
      userId: user.userId,
    });
    const newRefreshToken = await this.generateJwtRefreshToken({
      userId: user.userId,
      accessToken: this.hashToken(accessToken.token),
      accessExp: accessToken.expireAt,
    });

    return {
      accessToken: accessToken.token,
      newRefreshToken,
    };
  }

  hashToken(token: string) {
    return crypto.SHA256(token).toString(crypto.enc.Hex);
  }

  async checkRedisAccessToken(
    token: string,
    userId: string,
    type: 'accessToken' | 'refreshToken',
  ) {
    const hashTk = this.hashToken(token);
    const redisKey =
      type == 'accessToken'
        ? generateBlacklistAccessTokenKey(hashTk)
        : generateBlacklistRefreshTokenKey(hashTk);
    return !(await this.redis.exists(redisKey));
  }

  async validateAccessToken(token: string) {
    try {
      const data = await this.jwtService.verifyAsync<{ id: string }>(token, {
        secret: process.env.JWT_ACCESS_TOKEN_SECRET,
      });
      let isValid = await this.checkRedisAccessToken(
        this.hashToken(token),
        data.id,
        'accessToken',
      );
      if (!isValid) {
        throw new UnauthorizedException();
      }
      return data;
    } catch (error) {
      throw new UnauthorizedException();
    }
  }
  async validateRefreshToken(token: string) {
    try {
      const data = await this.jwtService.verifyAsync<{ id: string }>(token, {
        secret: process.env.JWT_REFRESH_TOKEN_SECRET,
      });
      let isValid = await this.checkRedisAccessToken(
        this.hashToken(token),
        data.id,
        'refreshToken',
      );
      if (!isValid) {
        throw new UnauthorizedException();
      }
      return data;
    } catch (error) {
      throw new UnauthorizedException();
    }
  }
}
