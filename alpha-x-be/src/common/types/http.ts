import { Request } from 'express';

export interface RequestWithRefreshToken extends Request {
  user: {
    userId: string;
    accessToken: string;
    accessExp: Date;
    iat: number;
    exp: number;
  };
}
