import database from "../core/database";
import ResultModel from "../model/resultModel"
import FacebookHelper from "../helper/facebookHelper"
import Helper from "../core/helper";
import FrienqModel from "../model/frienqModel";
import { validationResult } from "express-validator";
class AuthController {
    public async Login(req: any, res: any) {
        var resultModel = new ResultModel();
        //var errors = validationResult(req);
        //if (!errors.isEmpty()) {
        //    resultModel.result = false;
        //    resultModel.msg = "Validation Failed !";
        //    return res.status(422).json(resultModel);
        //}

        if (req.body.frienq_member_application != undefined) {

            if (req.body.frienq_member_application.data_facebook != undefined) await FacebookHelper.Connect(req,res);

            if (req.body.frienq_member_application.data_instagram != undefined) res.end(resultModel);

            if (req.body.frienq_member_application.data_twitter != undefined) res.end(resultModel);
            
            if (req.body.frienq_member_application.data_google != undefined) res.end(resultModel);

        }else{
            try {
                resultModel.result = true;
                resultModel.data = await FrienqModel.getLoginToken(req.body.email, req.body.password);
                if (resultModel.data == null) throw new Error("Unauthorized Login !");
            } catch (ex) {
                resultModel.result = false;
                resultModel.data = null;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        }
    }

    public async Register(req: any, res: any) {

        var resultModel = new ResultModel();

        var errors = validationResult(req);
        if (!errors.isEmpty()) {
            //resultModel.result = false;
            //resultModel.msg = "Validation Failed !";
            //return res.status(422).json(resultModel);
        }

        var uuid = require("uuid/v4");
        req.body.uid = uuid();

        var result;
        try {
            result = await database.executeQuery(
                [
                    "insert into frienq_member ( uid, id_sex, date_birth, date_sign, date_update, date_online, loc_lat, loc_lan, name, surname, username, password, profile_picture) values (?,?,?,?,?,?,?,?,?,?,?,?,'')",
                    "insert into frienq_member_email (uid_member, email, isdefault, confirmed) values (?,?, 1, 0);",
                    "insert into frienq_member_application (uid_member, id_facebook, id_instagram, id_twitter, id_google, data_facebook, data_instagram, data_twitter, data_google) values (?,?,?,?,?,?,?,?,?)"
                ],
                [[
                    req.body.uid,
                    req.body.id_sex,
                    req.body.date_birth,
                    Helper.dateToString(new Date()),
                    Helper.dateToString(new Date()),
                    Helper.dateToString(new Date()),
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
                ],
                [
                    req.body.uid,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.id_facebook == undefined ? null : req.body.frienq_member_application.id_facebook,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.id_instagram == undefined ? null : req.body.frienq_member_application.id_instagram,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.id_twitter == undefined ? null : req.body.frienq_member_application.id_twitter,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.id_google == undefined ? null : req.body.frienq_member_application.id_google,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.data_facebook == undefined ? null : req.body.frienq_member_application.data_facebook,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.data_instagram == undefined ? null : req.body.frienq_member_application.data_instagram,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.data_twitter == undefined ? null : req.body.frienq_member_application.data_twitter,
                    req.body.frienq_member_application == undefined || req.body.frienq_member_application.data_google == undefined ? null : req.body.frienq_member_application.data_google,
                ]
                ]);
        }
        catch (ex) {
            resultModel.result = false;
            resultModel.msg = ex.message;
            res.send(resultModel);
        }

        result = await FrienqModel.findByID(req.body.uid);

        resultModel.result = true;
        resultModel.data = result;

        res.send(resultModel);
    }

    public async CheckUserName(req: any, res: any) {
        var resultModel = new ResultModel();
        try {
            resultModel.result = true;
            resultModel.data = (await FrienqModel.findByUserName(req.body.username) == null)
        } catch (ex) {
            resultModel.result = false;
            resultModel.msg = ex.message;
            res.send(resultModel);
        }

        res.send(resultModel);
    }
}
export default new AuthController();