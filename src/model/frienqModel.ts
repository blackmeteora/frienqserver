import database from "../core/database";
import Helper from "../core/helper";

export default class FrienqModel {
    
    private model : object;

    public static async findByEMail(email:string){
        var result = await database.select(
            "select frienq_member.* from frienq_member "+
            "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member  "+
            "where frienq_member_email.email=?",[email])
        
        if(result.length==0) return undefined;
        else return result[0];
    }
    
    public static async findByID(id:string){
        var result = await database.select(
            "select frienq_member.* from frienq_member "+
            "where frienq_member.uid=?",[id])
        
        if(result.length==0) return undefined;
        else return result[0];
    }

    public static async getLoginToken(email:string, password:string){
        
        var result = await database.select(
            "select frienq_member.uid, frienq_member_session.session_key from frienq_member "+
            "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member  "+
            "left join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  "+
            "where frienq_member_email.email=? and frienq_member.password=?",[email, password]);
        
        if(result.length!=1) return null;
        
        if(result[0].session_key==null){

            var uuid = require("uuid/v4");
            var key=uuid();

            var execresult = await database.executeQuery(["insert into frienq_member_session (uid_member,session_key,date_create) values (?,?,?)"],
            [[result[0].uid, key, Helper.dateToString(new Date())]]);

            result = await database.select(
                "select frienq_member.uid, frienq_member_session.session_key from frienq_member "+
                "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member  "+
                "left join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  "+
                "where frienq_member_email.email=? and frienq_member.password=?",[email, password]);
        }

        return result[0].session_key;
    }
}