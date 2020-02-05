import database from "../core/database";
import PostItemModel from "./postItemModel";

export default class PostModel {
    public id:string;
    public uid_member:string;
    public id_type:number;
    public id_def_security_level:number;
    public location:string;
    public lat:number;
    public lan:number;
    public explanation:string;
    public count_rate:number=0;
    public count_commet:number=0;
    public deleted:boolean=false;
    public date_create:Date=new Date();
    public date_update:Date=new Date();
    public date_delete:Date=new Date();
    public items:Array<PostItemModel>;
    
    public async Save(){
        var queries:Array<string>=new Array<string>();
        var parameters:Array<any>=new Array<any>();

        queries.push("insert into frienq_post (id,uid_member,id_type,id_def_security_level,location,lat,lan,explanation,count_rate,count_comment,deleted,date_create,date_update,date_delete) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        parameters.push([this.id,this.uid_member,this.id_type,this.id_def_security_level,this.location,this.lat,this.lan,this.explanation,this.count_rate,this.count_commet,this.deleted,this.date_create,this.date_update,this.date_delete]);

        for(var i=0;i<this.items.length;i++){
            queries.push("insert into frienq_post_item (id,id_post,id_type,link,explanation,rate,count_rate,deleted,date_create,date_update,date_delete) values (?,?,?,?,?,?,?,?,?,?,?)");
            parameters.push([this.items[i].id,this.items[i].id_post,this.items[i].id_type,this.items[i].link,'',this.items[i].rate,this.items[i].count_rate,this.items[i].deleted,this.items[i].date_create,this.items[i].date_update,this.items[i].date_delete]);
        }

        try{
            var result = await database.executeQuery(queries,parameters);
            return true;
        }
        catch(ex){
            throw ex;
        }
    }

    public static async GetFeed(user:any, lastPost:string=""){
        
        var postResult = await database.select(
            "select distinct frienq_post.*,case when frienq_rate.rate is null then 0 else frienq_rate.rate end as member_rate "+
            "from frienq_post "+
            "inner join frienq_member_frienq on frienq_member_frienq.uid_owner=frienq_post.uid_member or frienq_post.uid_member=? "+
            "left join frienq_rate on frienq_post.uid_member=frienq_rate.uid_member_to and frienq_rate.id_object=frienq_post.id and frienq_rate.uid_member_from=?"+
            "where frienq_member_frienq.uid_member=? and frienq_post.deleted=0 "+
            "order by frienq_post.date_create desc "+
            "limit 100",[user.uid,user.uid,user.uid]);
        
        var postList = "";
        
        for(var i=0;i<postResult.length;i++){
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
}