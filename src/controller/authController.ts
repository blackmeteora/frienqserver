import {validationResult}  from "express-validator";
import database from "../database";
class AuthController {
    public async Login(req:any, res:any) {
       
    }

    public async Register(req:any, res:any) {
        var errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(422).json({ errors: errors.array() });
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

            result = await conn.query("insert into frienq_member_email (uid_member, email, isdefault, confirmed) values (?,?, 1, 0);",[req.body.uid, req.body.email]);
            conn.commit();
        }
        catch(ex){
            conn.rollback();
            res.send(ex);
        }
        
        result = await conn.query("select * from frienq_member where uid=?",[req.body.uid]);

        conn.end();

        res.send(result);
    }
}
export default new AuthController();