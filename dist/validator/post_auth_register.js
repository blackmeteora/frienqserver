"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_validator_1 = require("express-validator");
const frienqModel_1 = __importDefault(require("../model/frienqModel"));
exports.default = [
    express_validator_1.check('email').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('email').isEmail(),
    express_validator_1.check('email').custom((value) => {
        return frienqModel_1.default.findByEMail(value).then(result => {
            if (result) {
                return Promise.reject('E-mail already in use by another user !');
            }
        });
    }),
    express_validator_1.check('id_sex').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('id_sex').isNumeric(),
    express_validator_1.check('email').isLength({ min: 4 }),
    express_validator_1.check('date_birth').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('date_birth').matches("\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|[3][01])"),
    express_validator_1.check('loc_lat').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('loc_lat').isFloat(),
    express_validator_1.check('loc_lan').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('loc_lan').isFloat(),
    express_validator_1.check('name').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('surname').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('username').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('password').not().isEmpty().withMessage("Value Can't Be Empty"),
];
//# sourceMappingURL=post_auth_register.js.map