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
}