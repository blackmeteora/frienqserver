"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const database_1 = __importDefault(require("../core/database"));
class FrienqModel {
    static findByEMail(email) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_member.* from frienq_member " +
                "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member  " +
                "where frienq_member_email.email=?", [email]);
            if (result.length == 0)
                return undefined;
            else
                return result[0];
        });
    }
    static findByID(id) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_member.* from frienq_member " +
                "where frienq_member.uid=?", [id]);
            if (result.length == 0)
                return undefined;
            else
                return result[0];
        });
    }
}
exports.default = FrienqModel;
//# sourceMappingURL=frienqModel.js.map