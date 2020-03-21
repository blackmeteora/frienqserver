import database from "../core/database";
import Helper from "../core/helper";

export default class FrienqModel {

    public uid:string;
    public id_sex:number=0;
    public date_birth:Date=new Date();
    public date_sign:Date=new Date();
    public date_update:Date=new Date();
    public date_online:Date=new Date();
    public loc_lat:number=0;
    public loc_lan:number=0;
    public name:string;
    public email:string;
    public surname:string;
    public username:string;
    public password:string="";
    public profile_picture:string="";
    public rate:number=0;
    public frienq_count:number=0;
    public owned_frienq_count:number=0;
    
    public frienq_member_application:any;


    public FillFromRequest(req:any){
        this.uid = req.body.uid;
        this.id_sex = req.body.id_sex;
        this.date_birth = req.body.date_birth;
        this.loc_lat = req.body.loc_lat;
        this.loc_lan = req.body.loc_lan;
        this.name = req.body.name;
        this.surname = req.body.surname;
        this.username = req.body.username;
        this.email = req.body.email
        this.frienq_member_application.id_facebook = req.body.frienq_member_application.id_facebook == undefined ? null : req.body.frienq_member_application.id_facebook;
        this.frienq_member_application.id_instagram = req.body.frienq_member_application.id_instagram == undefined ? null : req.body.frienq_member_application.id_instagram;
        this.frienq_member_application.id_twitter = req.body.frienq_member_application.id_twitter == undefined ? null : req.body.frienq_member_application.id_twitter;
        this.frienq_member_application.id_google =req.body.frienq_member_application.id_google == undefined ? null : req.body.frienq_member_application.id_google;
        this.frienq_member_application.data_facebook = req.body.frienq_member_application.data_facebook == undefined ? null : req.body.frienq_member_application.data_facebook;
        this.frienq_member_application.data_instagram = req.body.frienq_member_application.data_instagram == undefined ? null : req.body.frienq_member_application.data_instagram;
        this.frienq_member_application.data_twitter = req.body.frienq_member_application.data_twitter == undefined ? null : req.body.frienq_member_application.data_twitter;
        this.frienq_member_application.data_google = req.body.frienq_member_application.data_google == undefined ? null : req.body.frienq_member_application.data_google;
    }

    public async Create() {

        var uuid = require("uuid/v4");
        this.uid = uuid();

        var result;
        try {
            result = await database.executeQuery(
                [
                    "insert into frienq_member ( uid, id_sex, date_birth, date_sign, date_update, date_online, loc_lat, loc_lan, name, surname, username, password, profile_picture) values (?,?,?,?,?,?,?,?,?,?,?,?,'')",
                    "insert into frienq_member_email (uid_member, email, isdefault, confirmed) values (?,?, 1, 0);",
                    "insert into frienq_member_application (uid_member, id_facebook, id_instagram, id_twitter, id_google, data_facebook, data_instagram, data_twitter, data_google) values (?,?,?,?,?,?,?,?,?)"
                ],
                [[
                    this.uid,
                    this.id_sex,
                    this.date_birth,
                    Helper.dateToString(new Date()),
                    Helper.dateToString(new Date()),
                    Helper.dateToString(new Date()),
                    this.loc_lat,
                    this.loc_lan,
                    this.name,
                    this.surname,
                    this.username,
                    this.password
                ],
                [
                    this.uid,
                    this.email
                ],
                [
                    this.uid,
                    this.frienq_member_application.id_facebook == undefined ? null : this.frienq_member_application.id_facebook,
                    this.frienq_member_application.id_instagram == undefined ? null : this.frienq_member_application.id_instagram,
                    this.frienq_member_application.id_twitter == undefined ? null : this.frienq_member_application.id_twitter,
                    this.frienq_member_application.id_google == undefined ? null : this.frienq_member_application.id_google,
                    this.frienq_member_application.data_facebook == undefined ? null : this.frienq_member_application.data_facebook,
                    this.frienq_member_application.data_instagram == undefined ? null : this.frienq_member_application.data_instagram,
                    this.frienq_member_application.data_twitter == undefined ? null : this.frienq_member_application.data_twitter,
                    this.frienq_member_application.data_google == undefined ? null : this.frienq_member_application.data_google,
                ]
                ]);
        }
        catch (ex) {
            return undefined;
        }

        return this;
    }


    public static async findByEMail(email:string){
        var result = await database.select(
            "select frienq_member.* from frienq_member "+
            "inner join frienq_member_email on frienq_member.uid=frienq_member_email.uid_member  "+
            "where frienq_member_email.email=?",[email])
        
        if(result.length==0) return undefined;
        else return result[0];
    }

    public static async findByApplication(id:string, application:string){
        var result = await database.select(
            "select frienq_member.* from frienq_member "+
            "inner join frienq_member_application on frienq_member.uid=frienq_member_application.uid_member  "+
            `where frienq_member_application.id_${application}=?`,[id])
        
        if(result.length==0) return undefined;
        else return result[0];
    }

    public static async frienq(owner:string, uid:string){
        var result = await database.executeQuery(["insert into frienq_member_frienq (uid_owner,uid_member) values (?,?)"],[[owner,uid]]);
        
        if(result.length==0) return undefined;
        else return result[0];
    }

    public static async unFrienq(owner:string, uid:string){
        var result = await database.executeQuery(["delete from frienq_member_frienq where uid_owner=? and uid_member=?"],[[owner,uid]]);
        
        if(result.length==0) return undefined;
        else return result[0];
    }

    public static async search(uid:string ,keyword:string){
        var result = await database.select("select frienq_member.uid, frienq_member.name, frienq_member.surname, "+
        "frienq_member.username, frienq_member.date_birth, frienq_member.id_sex, frienq_member.profile_picture, frienq_member.rate, frienq_member.owned_frienq_count, frienq_member.frienq_count, "+
        "case when ISNULL(frienq_member_frienq.uid_owner) then 0 else 1 end as is_frienq "+
        "from frienq_member "+
        "left join frienq_member_frienq on frienq_member_frienq.uid_owner = frienq_member.uid and frienq_member_frienq.uid_member = ? "+
        "where frienq_member.username like ? or CONCAT(frienq_member.name,frienq_member.surname) like ? order by rate limit 50",[uid, "%"+keyword+"%","%"+keyword+"%"])
        
        return result;
    }

    public static async getFrienqList(owner:string ,uid:string, lastusername:string, mode: number){
        //mode = 0 -> Takip Edenler , mode = 1 -> Takip Edilenler
        var result = await database.select("select frienq_member.*, "+
        "case when ISNULL(frienq_member_frienq.uid_owner) then 0 else 1 end as is_frienq "+
        "from frienq_member "+
        "inner join frienq_member_frienq frienq_member_frienq1 on  "+(mode==0 ? "frienq_member_frienq1.uid_member=frienq_member.uid and frienq_member_frienq1.uid_owner=":"frienq_member_frienq1.uid_owner=frienq_member.uid and frienq_member_frienq1.uid_member=")+"? "+
        "left join frienq_member_frienq on frienq_member_frienq.uid_owner = frienq_member.uid and frienq_member_frienq.uid_member = ? "+
        "where frienq_member.username>? order by username limit 50",[uid,owner,lastusername])
        
        return result;
    }

    public static async findByUserName(username:string){
        var result = await database.select(
            "select frienq_member.* from frienq_member where frienq_member.username=?",[username])
        
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

    public static async profilData(requestUid:string, uid:string){
        var result = await database.select(
            "select frienq_member.*, "+
            "case when ISNULL(frienq_member_frienq.uid_owner) then 0 else 1 end as is_frienq "+
            "from frienq_member "+
            "left join frienq_member_frienq on frienq_member_frienq.uid_owner = frienq_member.uid and frienq_member_frienq.uid_member = ? "+
            "where frienq_member.uid=?",[uid, requestUid])
        if(result.length==0) return undefined;
        else return result[0];
    }

    public static async findByToken(token:string){
        var result = await database.select(
            "select frienq_member.uid, frienq_member.name, frienq_member.surname, frienq_member_email.email, "+
            "frienq_member.username, frienq_member.date_birth, frienq_def_sex.value sex, frienq_member.profile_picture, frienq_member.rate, frienq_member.owned_frienq_count, frienq_member.frienq_count "+
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
            "where (frienq_member_email.email=? or frienq_member.username=?) and frienq_member.password=?",[email, email, password]);
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

        return result[0];
    }

    public static async getApplicationLoginToken(id:string, application:string){
        
        var result = await database.select(
            "select frienq_member.uid, frienq_member_session.session_key from frienq_member "+
            `inner join frienq_member_application on frienq_member.uid=frienq_member_application.uid_member and frienq_member_application.id_${application}=? `+
            "left join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  ",[id]);
        if(result.length!=1) return null;
        
        if(result[0].session_key==null){

            var uuid = require("uuid/v4");
            var key=uuid();

            var execresult = await database.executeQuery(["insert into frienq_member_session (uid_member,session_key,date_create) values (?,?,?)"],
            [[result[0].uid, key, Helper.dateToString(new Date())]]);

            result = await database.select(
                "select frienq_member.uid, frienq_member_session.session_key from frienq_member "+
                `inner join frienq_member_application on frienq_member.uid=frienq_member_application.uid_member and frienq_member_application.id_${application}=? `+
                "left join frienq_member_session on frienq_member.uid=frienq_member_session.uid_member  ",[id]);
        }

        return result[0];
    }

    public static async updateProfilePicture(uid:string, fileName:string){
        var result = await database.executeQuery(["update frienq_member set profile_picture=? where uid=?"],[[fileName,uid]]);
        return result;
    }
}