


import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserModule } from './user/user.module';
import { UserDetailModule } from './user-detail/user-detail.module';

@Module({
  imports: [
    TypeOrmModule.forRoot(),
    UserModule,
    UserDetailModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}