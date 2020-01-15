import {check}  from "express-validator";

export default [
    check('email').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('password').not().isEmpty().withMessage("Value Can't Be Empty"),
]

