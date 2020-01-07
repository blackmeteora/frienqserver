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
const helper_1 = __importDefault(require("../core/helper"));
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
    static findByToken(token) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_member.uid, frienq_member.name, frienq_member.surname, frienq_member_email.email, " +
                "frienq_member.username, frienq_member.date_birth, frienq_def_sex.value sex " +
                "from frienq_member " +
                "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member and isdefault=1 " +
                "inner join frienq_def_sex on frienq_member.id_sex=frienq_def_sex.id " +
                "inner join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  " +
                "where frienq_member_session.session_key=?", [token]);
            if (result.length == 1)
                return result[0];
            else
                return null;
        });
    }
    static getLoginToken(email, password) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_member.uid, frienq_member_session.session_key from frienq_member " +
                "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member and isdefault=1 " +
                "left join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  " +
                "where frienq_member_email.email=? and frienq_member.password=?", [email, password]);
            if (result.length != 1)
                return null;
            if (result[0].session_key == null) {
                var uuid = require("uuid/v4");
                var key = uuid();
                var execresult = yield database_1.default.executeQuery(["insert into frienq_member_session (uid_member,session_key,date_create) values (?,?,?)"], [[result[0].uid, key, helper_1.default.dateToString(new Date())]]);
                result = yield database_1.default.select("select frienq_member.uid, frienq_member_session.session_key from frienq_member " +
                    "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member and isdefault=1 " +
                    "left join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  " +
                    "where frienq_member_email.email=? and frienq_member.password=?", [email, password]);
            }
            return result[0].session_key;
        });
    }
}
exports.default = FrienqModel;
//# sourceMappingURL=frienqModel.js.map