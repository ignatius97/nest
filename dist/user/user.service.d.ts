import { Repository } from 'typeorm';
import { User } from './user.entity';
export declare class UserService {
    private usersRepository;
    constructor(usersRepository: Repository<User>);
    createUser(user: User): Promise<User>;
    getUsers(user: User): Promise<User[]>;
    getUser(_id: number): Promise<User[]>;
    updateUser(user: User): Promise<void>;
    deleteUser(user: User): Promise<void>;
}
