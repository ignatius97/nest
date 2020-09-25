

import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserDetail } from './user-detail.entity';

@Injectable()
export class UserDetailService {

    constructor(@InjectRepository(UserDetail) private usersRepository: Repository<UserDetail>) { }


    async createUserDetail(user: UserDetail): Promise<UserDetail> {
        return await this.usersRepository.save(user);
      }


    async getUserDetails(user: UserDetail): Promise<UserDetail[]> {
        return await this.usersRepository.find({
            select: ["firstname", "lastname"]
        });
    }

    async getUserDetail(_id: number): Promise<UserDetail[]> {
        return await this.usersRepository.find({
            select: ["firstname", "lastname"],
            where: [{ "UserID": _id }]
        });
    }

    async updateUserDetail(user: UserDetail) {
        this.usersRepository.save(user)
    }

    async deleteUserDetail(user: UserDetail) {
        this.usersRepository.delete(user);
    }
}