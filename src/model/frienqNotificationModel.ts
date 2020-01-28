import database from "../core/database";
import socket from '../socket';

export default class FrienqNotificationModel {

    public static async getNotifications(user:any){
        
        var result = await database.select(
            "select frienq_notification.*, "+
            "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq "+
            "from frienq_notification "+
            "inner join frienq_member on frienq_member.uid=frienq_notification.uid_frienq "+
            "where frienq_notification.deleted=0 and frienq_notification.uid_owner=? "+
            "limit 100",[user.uid]);
        
        if(result.length>0){
            result.forEach((element: any) => {
                element.frienq = JSON.parse(element.frienq);
            });
        }

        return result;
    }

    public static async setNotified(id:number){
        var result = await database.executeQuery(["update frienq_notification set notified=1 where id=?"],[[id]]);
        return result;
    }

    public static async sendNotifications(uid:String){
        var client = socket.findSocketByUID(uid);
        if(client!=null) {
            var result = await FrienqNotificationModel.getNotifications(client.user);
            client.socket.write('Notification::::'+JSON.stringify(result));
        }
    }

}