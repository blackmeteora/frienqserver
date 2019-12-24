"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_validator_1 = require("express-validator");
exports.default = [
    express_validator_1.check('email').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('email').isEmail(),
    express_validator_1.check('id_sex').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('id_sex').isNumeric(),
    express_validator_1.check('email').isLength({ min: 4 }),
    express_validator_1.check('date_birth').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('date_birth').matches("\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|[3][01])"),
    express_validator_1.check('date_sign').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('date_sign').matches("\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|[3][01]) (0[0-9]|1[0-9]|2[123]):(0[0-9]|[1-5][0-9]):(0[0-9]|[1-5][0-9])"),
    express_validator_1.check('date_update').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('date_update').matches("\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|[3][01]) (0[0-9]|1[0-9]|2[123]):(0[0-9]|[1-5][0-9]):(0[0-9]|[1-5][0-9])"),
    express_validator_1.check('date_online').not().isEmpty().withMessage("Value Can't Be Empty"),
    express_validator_1.check('date_online').matches("\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|[3][01]) (0[0-9]|1[0-9]|2[123]):(0[0-9]|[1-5][0-9]):(0[0-9]|[1-5][0-9])"),
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