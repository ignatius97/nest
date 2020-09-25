import { Entity, Column, PrimaryGeneratedColumn,OneToOne, JoinColumn } from 'typeorm';
import { User } from '../user/user.entity';

@Entity()
export class UserDetail {

    // @OneToOne(type => User, user_detail => User.UserID)
    // UserID: number;

    @OneToOne(type => User)
    @JoinColumn()
    UserID: number;


    @PrimaryGeneratedColumn()
    UserDetailsID: number;

    @Column()
    firstname:string;

    @Column() 
    lastname:string;
}
