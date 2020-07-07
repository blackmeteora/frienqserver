import database from "../core/database";
import PostItemModel from "./postItemModel";
import Helper from "../core/helper";

export default class PostModel {
    public id:string;
    public uid_member:string;
    public id_type:number;
    public id_def_security_level:number;
    public location:string;
    public lat:number;
    public lan:number;
    public explanation:string="";
    public count_rate:number=0;
    public count_commet:number=0;
    public order_no:number=0;
    public deleted:boolean=false;
    public date_create:Date=new Date();
    public date_update:Date=new Date();
    public date_delete:Date=new Date();
    public date_last:Date = null;
    public items:Array<PostItemModel>;
    public frienq_members:Array<String>;
    
    public async Save(){
        var queries:Array<string>=new Array<string>();
        var parameters:Array<any>=new Array<any>();

        queries.push("insert into frienq_post (id,uid_member,id_type,id_def_security_level,location,lat,lan,explanation,count_rate,count_comment,deleted,date_create,date_update,date_delete,date_last) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        parameters.push([
            this.id,
            this.uid_member,
            this.id_type,
            this.id_def_security_level,
            this.location,
            this.lat,
            this.lan,
            this.explanation,
            this.count_rate,
            this.count_commet,
            this.deleted,
            this.date_create,
            this.date_update,
            this.date_delete,
            this.date_last==undefined ? null : new Date(this.date_last)]);

        for(var i=0;i<this.items.length;i++){
            queries.push("insert into frienq_post_item (id,id_post,id_type,link,explanation,rate,count_rate,order_no,deleted,date_create,date_update,date_delete) values (?,?,?,?,?,?,?,?,?,?,?,?)");
            parameters.push([
                this.items[i].id,
                this.items[i].id_post,
                this.items[i].id_type,
                this.items[i].link,
                this.items[i].explanation,
                this.items[i].rate,
                this.items[i].count_rate,
                this.items[i].order_no,
                this.items[i].deleted,
                this.items[i].date_create,
                this.items[i].date_update,
                this.items[i].date_delete]);
        }

        for(var i=0; this.frienq_members!=undefined && i<this.frienq_members.length; i++){
            queries.push("insert into frienq_post_member (id_post,uid_member) values (?,?)");
            parameters.push([this.id, this.frienq_members[i]]);
        }

        try{
            var result = await database.executeQuery(queries,parameters);
            return true;
        }
        catch(ex){
            throw ex;
        }
    }

    public static async GetPost(user:any, id_post:string){
        
        var postResult = await database.select(
            "select distinct frienq_post.*,case when frienq_rate.rate is null then 0 else frienq_rate.rate end as member_rate, case when frienq_post_item_select.id_post_item is null then '' else frienq_post_item_select.id_post_item end as member_select, "+
            "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq "+
            "from frienq_post "+
            "inner join frienq_member_frienq on frienq_member_frienq.uid_owner=frienq_post.uid_member or frienq_post.uid_member=? "+
            "inner join frienq_member on frienq_member.uid=frienq_post.uid_member "+
            "left join frienq_rate on frienq_post.uid_member=frienq_rate.uid_member_to and frienq_rate.id_object=frienq_post.id and frienq_rate.uid_member_from=?"+
            "left join frienq_post_item_select on frienq_post.uid_member=frienq_post_item_select.uid_member_to and frienq_post_item_select.id_post=frienq_post.id and frienq_post_item_select.uid_member_from=?"+
            "where frienq_member_frienq.uid_member=? and frienq_post.deleted=0 and frienq_post.id=? "+
            "order by frienq_post.date_create desc "+
            "limit 100",[user.uid,user.uid,user.uid,user.uid,id_post]);
        
        var postList = "";
        
        for(var i=0;i<postResult.length;i++){
           postResult[i].frienq = JSON.parse(postResult[i].frienq);
           postList=postList+",'"+postResult[i].id+"'"
           postResult[i].items=new Array<any>();
           delete postResult[i].deleted;
        }

        var postItemResult = await database.select(
            "select frienq_post_item.* from frienq_post_item where deleted=0 and id_post in (''"+postList+") order by order_no",[]);
        
        for(var i=0;i<postResult.length;i++){
            for(var x=0;x<postItemResult.length;x++){
                if(postResult[i].id==postItemResult[x].id_post){
                     delete postItemResult[x].deleted;
                     postResult[i].items.push(postItemResult[x]);
                }
            }
        }

        return postResult[0];
    }

    public static async GetFeedCount(user:any,uid_member:string="", mode:number=0){
        
        var self = user.uid == uid_member; //Who is

        let params:any[] = [];
        
        var sql = "select Count(*) as ResultCount "+
        "from frienq_post "+
        "inner join frienq_member on frienq_member.uid=frienq_post.uid_member "+
        "left join frienq_member_frienq on frienq_member_frienq.uid_owner=frienq_post.uid_member and frienq_member_frienq.uid_member='"+user.uid+"' "+
        "left join frienq_rate on frienq_post.uid_member=frienq_rate.uid_member_to and frienq_rate.id_object=frienq_post.id and frienq_rate.uid_member_from='"+user.uid+"' "+
        "left join frienq_post_item_select on frienq_post.uid_member=frienq_post_item_select.uid_member_to and frienq_post_item_select.id_post=frienq_post.id and frienq_post_item_select.uid_member_from='"+user.uid+"'"+
        "where frienq_post.deleted=0 "+
        /*User Self*/               (self==true && mode==0 ? " and frienq_post.uid_member='"+user.uid+"' " : "")+
        /*Another User Profile*/    (uid_member!="" && self==false && mode==0 ? " and (frienq_post.uid_member='"+uid_member+"' and ((frienq_post.id_def_security_level=0) or (frienq_member_frienq.uid_member is not null and (frienq_post.id_def_security_level=1) or (frienq_post.id_def_security_level=2 and (select count(*) from frienq_post_member where id_post=frienq_post.id and uid_member='"+user.uid+"')>0 ))  )) ":"")+
        /*Feed*/                    (uid_member=="" && self==false && mode==0 ? "  and (frienq_post.uid_member='"+user.uid+"' or (frienq_member_frienq.uid_member is not null and (frienq_post.id_def_security_level in (0,1) or (frienq_post.id_def_security_level=2 and (select count(*) from frienq_post_member where id_post=frienq_post.id and uid_member='"+user.uid+"')>0) )) )":"")+
        /*Fallowed Posts*/          (mode==1 ? " and (frienq_rate.uid_member_to is not null or frienq_post_item_select.uid_member_to is not null) " : "")+
        /*Unresponded Posts*/       (mode==2 ? " and (frienq_rate.uid_member_to is null and frienq_post_item_select.uid_member_to is null) " : "");

        var countResult = await database.select(sql,params);

        return countResult;
    }

    public static async GetFeed(user:any,uid_member:string="", lastPost:string="", mode:number=0){
        
        var self = user.uid == uid_member; //Who is

        let params:any[] = [];
        
        var sql = "select distinct frienq_post.*,case when frienq_rate.rate is null then 0 else frienq_rate.rate end as member_rate, case when frienq_post_item_select.id_post_item is null then '' else frienq_post_item_select.id_post_item end as member_select, "+
        "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq "+
        "from frienq_post "+
        "inner join frienq_member on frienq_member.uid=frienq_post.uid_member "+
        "left join frienq_member_frienq on frienq_member_frienq.uid_owner=frienq_post.uid_member and frienq_member_frienq.uid_member='"+user.uid+"' "+
        "left join frienq_rate on frienq_post.uid_member=frienq_rate.uid_member_to and frienq_rate.id_object=frienq_post.id and frienq_rate.uid_member_from='"+user.uid+"' "+
        "left join frienq_post_item_select on frienq_post.uid_member=frienq_post_item_select.uid_member_to and frienq_post_item_select.id_post=frienq_post.id and frienq_post_item_select.uid_member_from='"+user.uid+"'"+
        "where frienq_post.deleted=0 "+
        /*User Self*/               (self==true && mode==0 ? " and frienq_post.uid_member='"+user.uid+"' " : "")+
        /*Another User Profile*/    (uid_member!="" && self==false && mode==0 ? " and (frienq_post.uid_member='"+uid_member+"' and ((frienq_post.id_def_security_level=0) or (frienq_member_frienq.uid_member is not null and (frienq_post.id_def_security_level=1) or (frienq_post.id_def_security_level=2 and (select count(*) from frienq_post_member where id_post=frienq_post.id and uid_member='"+user.uid+"')>0 ))  )) ":"")+
        /*Feed*/                    (uid_member=="" && self==false && mode==0 ? "  and (frienq_post.uid_member='"+user.uid+"' or (frienq_member_frienq.uid_member is not null and (frienq_post.id_def_security_level in (0,1) or (frienq_post.id_def_security_level=2 and (select count(*) from frienq_post_member where id_post=frienq_post.id and uid_member='"+user.uid+"')>0) )) )":"")+
        /*Fallowed Posts*/          (mode==1 ? " and (frienq_rate.uid_member_to is not null or frienq_post_item_select.uid_member_to is not null) " : "")+
        /*Unresponded Posts*/       (mode==2 ? " and (frienq_rate.uid_member_to is null and frienq_post_item_select.uid_member_to is null) " : "")+
        /*Paging*/                  (lastPost=="" ? "" : " and (frienq_post.date_create <= (select date_create from frienq_post where id='"+lastPost+"' limit 1) and frienq_post.id!='"+lastPost+"') ")+
        "order by frienq_post.date_create desc "+
        "limit 10";

        var postResult = await database.select(sql,params);
        
        var postList = "";
        
        for(var i=0;i<postResult.length;i++){
           postResult[i].frienq = JSON.parse(postResult[i].frienq);
           postList=postList+",'"+postResult[i].id+"'"
           postResult[i].items=new Array<any>();
           delete postResult[i].deleted;
        }

        var postItemResult = await database.select(
            "select frienq_post_item.* from frienq_post_item where deleted=0 and id_post in (''"+postList+")",[]);
        
        for(var i=0;i<postResult.length;i++){
            for(var x=0;x<postItemResult.length;x++){
                if(postResult[i].id==postItemResult[x].id_post){
                     delete postItemResult[x].deleted;
                     postResult[i].items.push(postItemResult[x]);
                }
            }
        }

        return postResult;
    }

    public static async RatePost(userfrom:any, userto:any, postid:string, rate:number){
        
        var rateResult = await database.executeQuery(["IF (select count(*) from frienq_rate where id_object=? and uid_member_from=? and uid_member_to=?)=0 then "+
        "insert into frienq_rate (id_object,id_type,uid_member_from,uid_member_to,rate,notified,deleted,date_create,date_update,date_delete) values (?,?,?,?,?,?,?,?,?,?); "+
        "else "+
        "update frienq_rate set rate=?,deleted=? where id_object=? and uid_member_from=? and uid_member_to=?; "+
        "end if;"],
        [[postid,userfrom,userto,postid,0,userfrom,userto,rate,0,rate==0 ? 1 : 0,new Date(),new Date(),new Date(),rate,rate==0 ? 1 : 0,postid,userfrom,userto]]);

        var postResult = await database.select("select rate,count_rate from frienq_post where id=?",[postid]);

        return postResult[0];
    }

    public static async RateList(postid:string){
        
        var result = await database.select(
            "select frienq_rate.rate, frienq_rate.date_create, "+
            "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq "+
            "from frienq_rate "+
            "inner join frienq_member on frienq_member.uid=frienq_rate.uid_member_from "+
            "where frienq_rate.deleted=0 and frienq_rate.id_object=? ",[postid]);

            if(result.length>0){
                for(var i=0;i<result.length;i++) result[i].frienq = JSON.parse(result[i].frienq);
            }

            return result;
    }

    public static async DeletePost(user:any, postid:string){
        
        var result = await database.executeQuery(["update frienq_post set deleted=1, date_delete=? where id=? and uid_member=?"],
        [[new Date(), postid, user.uid]]);

        let res:any = result[0];

        return res["affectedRows"] == 1;
    }

    public static async AddComment(user:any, uid_member:string, id_post:any, comment:string){
        
        var uuid = require("uuid/v4");
        var now = new Date();
        var result = await database.executeQuery(["insert into frienq_post_comment (id, id_post, uid_member_from, uid_member_to, comment, rate, rate_count, notified, deleted, date_create, date_update, date_delete) values (?,?,?,?,?,?,?,?,?,?,?,?)"],
        [[uuid(), id_post, user.uid, uid_member, comment, 0, 0, 0, 0, now, now, now]]);

        let res:any = result[0];

       
       
        return res["affectedRows"] == 1;
    }

    public static async UpdateComment(user:any, id_comment:string, comment:string){
        
        var uuid = require("uuid/v4");
        var now = new Date();
        var result = await database.executeQuery([
            "insert into frienq_post_comment_history select * from frienq_post_comment where id=? and uid_member_from=?",
            "update frienq_post_comment set comment=?, date_update=? where id=? and uid_member_from=?"],
        [[id_comment, user.uid],[comment, now, id_comment, user.uid]]);

        let res:any = result[1];

        return res["affectedRows"] == 1;
    }

    public static async DeleteComment(user:any, id_comment:string){
        
        var uuid = require("uuid/v4");
        var now = new Date();
        var result = await database.executeQuery([
            "update frienq_post_comment set deleted=1, date_delete=? where id=? and uid_member_from=?"],
        [[now, id_comment, user.uid]]);

        let res:any = result[0];

        return res["affectedRows"] == 1;
    }

    public static async GetCommentList(postid:string){
        
        var result = await database.select(
            "select frienq_post_comment.id, frienq_post_comment.comment, frienq_post_comment.date_create, frienq_post_comment.date_update, "+
            "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq "+
            "from frienq_post_comment "+
            "inner join frienq_member on frienq_member.uid=frienq_post_comment.uid_member_from "+
            "where frienq_post_comment.deleted=0 and frienq_post_comment.id_post=? "+
            "order by frienq_post_comment.date_create",[postid]);

            if(result.length>0){
                for(var i=0;i<result.length;i++) result[i].frienq = JSON.parse(result[i].frienq);
            }

            return result;
    }

    public static async GetComment(id_comment:string){
        
        var result = await database.select(
            "select frienq_post_comment.id, frienq_post_comment.comment, frienq_post_comment.date_create, frienq_post_comment.date_update "+
            "from frienq_post_comment "+
            "where frienq_post_comment.deleted=0 and frienq_post_comment.id=? ",[id_comment]);
            
            return result;
    }

    public static async GetCommentHistoryList(id_comment:string){
        
        var result = await database.select(
            "select frienq_post_comment_history.id, frienq_post_comment_history.comment, frienq_post_comment_history.date_create, frienq_post_comment_history.date_update from frienq_post_comment_history where id=? order by frienq_post_comment_history.date_update",[id_comment]);

            return result;
    }

    public static async VotePost(userfrom:any, userto:any, postid:string, postitemid:string){
        
        var rateResult = await database.executeQuery([
            "delete from frienq_post_item_select where id_post=? and uid_member_from=?",
            "insert into frienq_post_item_select (id_post,uid_member_from,id_post_item,uid_member_to) values (?,?,?,?)"
        ],
        [[postid,userfrom.uid],[postid,userfrom.uid,postitemid,userto]]);

        let res:any = rateResult[1];

        return res["affectedRows"] == 1;
    }

    public static async VoteList(user:any, id_post:string, id_post_item:string){
        
        var result = await database.select(
            "select frienq_member.*, "+
            "case when ISNULL(frienq_member_frienq.uid_owner) then 0 else 1 end as is_frienq "+
            "from frienq_member "+
            "inner join frienq_post on frienq_post.uid_member = ? and frienq_post.id=?"+
            "inner join frienq_post_item_select on frienq_post_item_select.id_post = frienq_post.id and frienq_post_item_select.id_post_item = ? and frienq_post_item_select.uid_member_from = frienq_member.uid "+
            "left join frienq_member_frienq on frienq_member_frienq.uid_owner = frienq_member.uid and frienq_member_frienq.uid_member = ? ",
            [user.uid, id_post, id_post_item, user.uid]);


            for(var i=0;i<result.length;i++){
                delete result[i].deleted;
                delete result[i].password;
             }

            return result;
    }
}