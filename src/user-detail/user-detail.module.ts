

import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserDetailService } from './user-detail.service';
import { UserDetailController } from './user-detail.controller';
import { UserDetail } from './user-detail.entity';

@Module({
  imports: [TypeOrmModule.forFeature([UserDetail])],
  providers: [UserDetailService],
  controllers: [UserDetailController]
})

export class UserDetailModule {}