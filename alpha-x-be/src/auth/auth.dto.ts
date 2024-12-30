import { z } from 'zod';
import _, { first } from 'lodash';
import { createZodDto } from '@wahyubucil/nestjs-zod-openapi';
const LoginData = z.object({
  email: z.string().email(),
  password: z.string().min(6),
});

const RegisterData = z.object({
  email: z.string().email(),
  password: z.string().min(6),
  firstName: z.string().min(1),
  lastName: z.string().min(1),
  avatar: z.string().url(),
  dateOfBirth: z.date().refine((arg) => {
    return new Date().getFullYear() - arg.getFullYear() >= 16;
  }),
});

const CheckEmailExistData = z.object({
  email: z.string().email(),
});

export type LoginData = z.infer<typeof LoginData>;
export type RegisterData = z.infer<typeof RegisterData>;
export type CheckEmailExistData = z.infer<typeof CheckEmailExistData>;

export class LoginDto extends createZodDto(LoginData) {}
export class RegisterDto extends createZodDto(RegisterData) {}
export class CheckEmailExistDto extends createZodDto(CheckEmailExistData) {}
