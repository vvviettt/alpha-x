import { Body, Controller, Post, Req, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { CheckEmailExistDto, LoginDto, RegisterDto } from './auth.dto';
import { AuthService } from './auth.service';
import { RefreshTokenGuard } from 'src/common/guards/refresh-token.guard';
import { RequestWithRefreshToken } from 'src/common/types/http';

@Controller()
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('login')
  login(@Body() data: LoginDto) {
    return this.authService.login(data);
  }

  @Post('email/exist')
  checkEmailExist(@Body() data: CheckEmailExistDto) {
    return this.authService.checkEmailExist(data);
  }

  @Post('register')
  register(@Body() data: RegisterDto) {
    return this.authService.createUser(data);
  }

  @Post('refresh')
  @UseGuards(RefreshTokenGuard)
  @ApiBearerAuth()
  refreshToken(@Req() data: RequestWithRefreshToken) {}
}
