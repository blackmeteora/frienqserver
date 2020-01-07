"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_validator_1 = require("express-validator");
exports.default = [
    express_validator_1.check('email').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('email').isEmail(),
    express_validator_1.check('password').not().isEmpty().withMessage("Value Can't Be Empty"),
];
//# sourceMappingURL=post_auth_login.js.map