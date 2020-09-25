import { UserService } from './user.service';
import { User } from './user.entity';
export declare class UserController {
    private service;
    constructor(service: UserService);
    get(params: any): Promise<User[]>;
    findAll(user: User): Promise<User[]>;
    create(user: User): Promise<User>;
    update(user: User): Promise<void>;
    deleteUser(params: any): Promise<void>;
}
