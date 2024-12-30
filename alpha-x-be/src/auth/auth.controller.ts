import { Body, Controller, Post } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { CheckEmailExistDto } from './auth.dto';
import { AuthService } from './auth.service';

@Controller()
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('login')
  login() {}

  @Post('email/exist')
  checkEmailExist(@Body() data: CheckEmailExistDto) {
    return this.authService.checkEmailExist(data);
  }

  @Post('register')
  register() {}
}
