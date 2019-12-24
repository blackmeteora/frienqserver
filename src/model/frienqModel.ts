import database from "../core/database";

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
}