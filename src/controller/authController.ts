import {validationResult}  from "express-validator";
import database from "../database";
import ResultModel from "../model/resultModel"
import Helper from "../helper";
class AuthController {
    public async Login(req:any, res:any) {
       
    }

    public async Register(req:any, res:any) {
        
        var resultModel = new ResultModel();

        var errors = validationResult(req);
        if (!errors.isEmpty()) {
            resultModel.result = false;
            resultModel.msg = errors.array();
            return res.status(422).json(resultModel);
        }
        
        if(req.body.uid===undefined){
            var uuid = require("uuid/v4");
            req.body.uid = uuid(); 
        }
        
        var conn = await database.getConnection();
        conn.beginTransaction();
        var result;
        try{
            var result = await conn.query("insert into frienq_member ( uid, id_sex, date_birth, date_sign, date_update, date_online, loc_lat, loc_lan, name, surname, username, password, profile_picture) "+
            "values (?,?,?,?,?,?,?,?,?,?,?,?,''); ",
            [
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
            ]);

            result = await conn.query("insert into frienq_member_email (uid_member, email, isdefault, confirmed) values (?,?, 1, 0);",[req.body.uid, req.body.email]);
            conn.commit();
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg = ex;
            conn.rollback();
            res.send(resultModel);
        }
        
        result = await conn.query("select * from frienq_member where uid=?",[req.body.uid]);

        conn.end();
        
        resultModel.result=true;
        resultModel.data=result;

        res.send(resultModel);
    }
}
export default new AuthController();