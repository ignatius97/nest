"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserDetailService = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const user_detail_entity_1 = require("./user-detail.entity");
let UserDetailService = class UserDetailService {
    constructor(usersRepository) {
        this.usersRepository = usersRepository;
    }
    async createUserDetail(user) {
        return await this.usersRepository.save(user);
    }
    async getUserDetails(user) {
        return await this.usersRepository.find({
            select: ["firstname", "lastname"]
        });
    }
    async getUserDetail(_id) {
        return await this.usersRepository.find({
            select: ["firstname", "lastname"],
            where: [{ "UserID": _id }]
        });
    }
    async updateUserDetail(user) {
        this.usersRepository.save(user);
    }
    async deleteUserDetail(user) {
        this.usersRepository.delete(user);
    }
};
UserDetailService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(user_detail_entity_1.UserDetail)),
    __metadata("design:paramtypes", [typeorm_2.Repository])
], UserDetailService);
exports.UserDetailService = UserDetailService;
//# sourceMappingURL=user-detail.service.js.map