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

    public static async findByToken(token:string){
        var result = await database.select(
            "select frienq_member.uid, frienq_member.name, frienq_member.surname, frienq_member_email.email, "+
            "frienq_member.username, frienq_member.date_birth, frienq_def_sex.value sex "+
            "from frienq_member "+
            "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member and isdefault=1 "+
            "inner join frienq_def_sex on frienq_member.id_sex=frienq_def_sex.id "+
            "inner join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  "+
            "where frienq_member_session.session_key=?",[token]);
        if(result.length==1) return result[0];
        else return null;
    }

    public static async getLoginToken(email:string, password:string){
        var result = await database.select(
            "select frienq_member.uid, frienq_member_session.session_key from frienq_member "+
            "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member and isdefault=1 "+
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
                "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member and isdefault=1 "+
                "left join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  "+
                "where frienq_member_email.email=? and frienq_member.password=?",[email, password]);
        }

        return result[0].session_key;
    }

    public static async updateProfilePicture(uid:string, fileName:string){
        var result = await database.executeQuery(["update frienq_member set profile_picture=? where uid=?"],[[fileName,uid]]);
        return result;
    }
}