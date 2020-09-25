import { Repository } from 'typeorm';
import { UserDetail } from './user-detail.entity';
export declare class UserDetailService {
    private usersRepository;
    constructor(usersRepository: Repository<UserDetail>);
    createUserDetail(user: UserDetail): Promise<UserDetail>;
    getUserDetails(user: UserDetail): Promise<UserDetail[]>;
    getUserDetail(_id: number): Promise<UserDetail[]>;
    updateUserDetail(user: UserDetail): Promise<void>;
    deleteUserDetail(user: UserDetail): Promise<void>;
}
