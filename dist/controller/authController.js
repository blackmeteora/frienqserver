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
const express_validator_1 = require("express-validator");
const database_1 = __importDefault(require("../database"));
class AuthController {
    Login(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
        });
    }
    Register(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var errors = express_validator_1.validationResult(req);
            if (!errors.isEmpty()) {
                return res.status(422).json({ errors: errors.array() });
            }
            if (req.body.uid === undefined) {
                var uuid = require("uuid/v4");
                req.body.uid = uuid();
            }
            var conn = yield database_1.default.getConnection();
            conn.beginTransaction();
            var result;
            try {
                var result = yield conn.query("insert into frienq_member ( uid, id_sex, date_birth, date_sign, date_update, date_online, loc_lat, loc_lan, name, surname, username, password, profile_picture) " +
                    "values (?,?,?,?,?,?,?,?,?,?,?,?,''); ", [
                    req.body.uid,
                    req.body.id_sex,
                    req.body.date_birth,
                    req.body.date_sign,
                    req.body.date_update,
                    req.body.date_online,
                    req.body.loc_lat,
                    req.body.loc_lan,
                    req.body.name,
                    req.body.surname,
                    req.body.username,
                    req.body.password
                ]);
                result = yield conn.query("insert into frienq_member_email (uid_member, email, isdefault, confirmed) values (?,?, 1, 0);", [req.body.uid, req.body.email]);
                conn.commit();
            }
            catch (ex) {
                conn.rollback();
                res.send(ex);
            }
            result = yield conn.query("select * from frienq_member where uid=?", [req.body.uid]);
            conn.end();
            res.send(result);
        });
    }
}
exports.default = new AuthController();
//# sourceMappingURL=authController.js.map