import { Controller, Post, Body, Get, Put, Delete,Param} from '@nestjs/common';
import { UserDetailService } from './user-detail.service';
import { UserDetail } from './user-detail.entity';

@Controller('user-detail')
export class UserDetailController {

    constructor(private service: UserDetailService) { }

    @Get(':id')
    get(@Param() params) {
        return this.service.getUserDetail(params.id);
    }

    @Get()
    findAll(user: UserDetail) {
        return this.service.getUserDetails(user);
    }

    @Post()
    create(@Body() user: UserDetail) {
        return this.service.createUserDetail(user);
    }

    @Put()
    update(@Body() user: UserDetail) {
        return this.service.updateUserDetail(user);
    }

    @Delete(':id')
    deleteUser(@Param() params) {
        return this.service.deleteUserDetail(params.id);
    }
}