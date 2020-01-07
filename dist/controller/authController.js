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
const resultModel_1 = __importDefault(require("../model/resultModel"));
const helper_1 = __importDefault(require("../core/helper"));
const frienqModel_1 = __importDefault(require("../model/frienqModel"));
const express_validator_1 = require("express-validator");
class AuthController {
    Login(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            var errors = express_validator_1.validationResult(req);
            if (!errors.isEmpty()) {
                resultModel.result = false;
                resultModel.msg = "Validation Failed !";
                return res.status(422).json(resultModel);
            }
            try {
                resultModel.result = true;
                resultModel.data = yield frienqModel_1.default.getLoginToken(req.body.email, req.body.password);
                if (resultModel.data == null)
                    throw new Error("Unauthorized Login !");
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.data = null;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    Register(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            var errors = express_validator_1.validationResult(req);
            if (!errors.isEmpty()) {
                resultModel.result = false;
                resultModel.msg = "Validation Failed !";
                return res.status(422).json(resultModel);
            }
            if (req.body.uid === undefined) {
                var uuid = require("uuid/v4");
                req.body.uid = uuid();
            }
            var result;
            try {
                result = yield database_1.default.executeQuery([
                    "insert into frienq_member ( uid, id_sex, date_birth, date_sign, date_update, date_online, loc_lat, loc_lan, name, surname, username, password, profile_picture) values (?,?,?,?,?,?,?,?,?,?,?,?,'')",
                    "insert into frienq_member_email (uid_member, email, isdefault, confirmed) values (?,?, 1, 0);"
                ], [[
                        req.body.uid,
                        req.body.id_sex,
                        req.body.date_birth,
                        helper_1.default.dateToString(new Date()),
                        helper_1.default.dateToString(new Date()),
                        helper_1.default.dateToString(new Date()),
                        req.body.loc_lat,
                        req.body.loc_lan,
                        req.body.name,
                        req.body.surname,
                        req.body.username,
                        req.body.password
                    ],
                    [
                        req.body.uid,
                        req.body.email
                    ]
                ]);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
                res.send(resultModel);
            }
            result = yield frienqModel_1.default.findByID(req.body.uid);
            resultModel.result = true;
            resultModel.data = result;
            res.send(resultModel);
        });
    }
}
exports.default = new AuthController();
//# sourceMappingURL=authController.js.map