"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserDetailModule = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const user_detail_service_1 = require("./user-detail.service");
const user_detail_controller_1 = require("./user-detail.controller");
const user_detail_entity_1 = require("./user-detail.entity");
let UserDetailModule = class UserDetailModule {
};
UserDetailModule = __decorate([
    common_1.Module({
        imports: [typeorm_1.TypeOrmModule.forFeature([user_detail_entity_1.UserDetail])],
        providers: [user_detail_service_1.UserDetailService],
        controllers: [user_detail_controller_1.UserDetailController]
    })
], UserDetailModule);
exports.UserDetailModule = UserDetailModule;
//# sourceMappingURL=user-detail.module.js.map