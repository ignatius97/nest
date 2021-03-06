import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class User {
    @PrimaryGeneratedColumn()
    UserID: number;

    @Column()
    username:string;

    @Column() 
    password:string;
}
