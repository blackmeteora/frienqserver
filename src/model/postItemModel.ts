export default class PostItemModel {
    public id:string;
    public id_post:string;
    public id_type:number;
    public link:string;
    public rate:number=0;
    public count_rate:number=0;
    public explanation:string;
    public order_no:number=0;
    public deleted:boolean=false;
    public date_create:Date=new Date();
    public date_update:Date=new Date();
    public date_delete:Date=new Date();
}