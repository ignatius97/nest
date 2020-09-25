import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from './user.entity';

@Injectable()
export class UserService {

    constructor(@InjectRepository(User) private usersRepository: Repository<User>) { }


    async createUser(user: User): Promise<User> {
        return await this.usersRepository.save(user);
      }


    async getUsers(user: User): Promise<User[]> {
        return await this.usersRepository.find({
            select: ["username", "password"]
        });
    }

    async getUser(_id: number): Promise<User[]> {
        return await this.usersRepository.find({
            select: ["username", "password"],
            where: [{ "UserID": _id }]
        });
    }

    async updateUser(user: User) {
        this.usersRepository.save(user)
    }

    async deleteUser(user: User) {
        this.usersRepository.delete(user);
    }
}