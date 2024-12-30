import { UploadModule } from './upload/upload.module';
import { AuthModule } from './auth/auth.module';
import { Module } from '@nestjs/common';
import { PrismaService } from './prisma/prisma.service';

@Module({
  imports: [UploadModule, AuthModule],
  controllers: [],
  providers: [PrismaService],
})
export class AppModule {}
