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
exports.UserDetailController = void 0;
const common_1 = require("@nestjs/common");
const user_detail_service_1 = require("./user-detail.service");
const user_detail_entity_1 = require("./user-detail.entity");
let UserDetailController = class UserDetailController {
    constructor(service) {
        this.service = service;
    }
    get(params) {
        return this.service.getUserDetail(params.id);
    }
    findAll(user) {
        return this.service.getUserDetails(user);
    }
    create(user) {
        return this.service.createUserDetail(user);
    }
    update(user) {
        return this.service.updateUserDetail(user);
    }
    deleteUser(params) {
        return this.service.deleteUserDetail(params.id);
    }
};
__decorate([
    common_1.Get(':id'),
    __param(0, common_1.Param()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], UserDetailController.prototype, "get", null);
__decorate([
    common_1.Get(),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_detail_entity_1.UserDetail]),
    __metadata("design:returntype", void 0)
], UserDetailController.prototype, "findAll", null);
__decorate([
    common_1.Post(),
    __param(0, common_1.Body()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_detail_entity_1.UserDetail]),
    __metadata("design:returntype", void 0)
], UserDetailController.prototype, "create", null);
__decorate([
    common_1.Put(),
    __param(0, common_1.Body()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_detail_entity_1.UserDetail]),
    __metadata("design:returntype", void 0)
], UserDetailController.prototype, "update", null);
__decorate([
    common_1.Delete(':id'),
    __param(0, common_1.Param()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], UserDetailController.prototype, "deleteUser", null);
UserDetailController = __decorate([
    common_1.Controller('user-detail'),
    __metadata("design:paramtypes", [user_detail_service_1.UserDetailService])
], UserDetailController);
exports.UserDetailController = UserDetailController;
//# sourceMappingURL=user-detail.controller.js.map