import {check}  from "express-validator";
import FrienqModel from "../model/frienqModel";

export default [
    check('email').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('email').isEmail(),
    check('email').custom((value)=>{
        return FrienqModel.findByEMail(value).then(result => {
            if (result) {
              return Promise.reject('E-mail already in use by another user !');
            }
          });
    }),
    check('id_sex').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('id_sex').isNumeric(),
    check('email').isLength({min:4}),
    check('date_birth').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('date_birth').matches("\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|[3][01])"),
    check('loc_lat').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('loc_lat').isFloat(),
    check('loc_lan').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('loc_lan').isFloat(),
    check('name').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('surname').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('username').not().isEmpty().withMessage("Value Can't Be Empty"),
    check('password').not().isEmpty().withMessage("Value Can't Be Empty"),
]

