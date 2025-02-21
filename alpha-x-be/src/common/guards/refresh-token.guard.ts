import { Injectable, CanActivate, ExecutionContext } from '@nestjs/common';
import { Observable } from 'rxjs';
import { extractTokenFromHeader } from '../utils/http';
import { AuthService } from 'src/auth/auth.service';

@Injectable()
export class RefreshTokenGuard implements CanActivate {
  constructor(private readonly authService: AuthService) {}
  async canActivate(context: ExecutionContext): Promise<boolean> {
    const request = context.switchToHttp().getRequest();
    const token = extractTokenFromHeader(request);
    if (token) {
      const user = await this.authService.validateRefreshToken(token);
      if (user) {
        request.user = user;
        return true;
      }
      return false;
    }
    return false;
  }
}
