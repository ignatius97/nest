import { UserDetailService } from './user-detail.service';
import { UserDetail } from './user-detail.entity';
export declare class UserDetailController {
    private service;
    constructor(service: UserDetailService);
    get(params: any): Promise<UserDetail[]>;
    findAll(user: UserDetail): Promise<UserDetail[]>;
    create(user: UserDetail): Promise<UserDetail>;
    update(user: UserDetail): Promise<void>;
    deleteUser(params: any): Promise<void>;
}
