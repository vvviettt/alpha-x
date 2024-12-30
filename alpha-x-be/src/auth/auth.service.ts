import { Injectable } from '@nestjs/common';
import { CheckEmailExistData, RegisterData } from './auth.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class AuthService {
  constructor(private readonly prisma: PrismaService) {}

  async checkEmailExist(data: CheckEmailExistData) {
    return await this.prisma.user.findUniqueOrThrow({
      where: { email: data.email },
    });
  }

  async createUser(data: RegisterData) {
    await this.checkEmailExist(data);
    return await this.prisma.user.create({
      data: {
        email: data.email,
        password: data.password,
        firstName: data.firstName,
        lastName: data.lastName,
        dateOfBirth: data.dateOfBirth,
        avatarUrl: data.avatar,
      },
    });
  }
}
