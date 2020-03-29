import database from "../core/database";
import socket from '../socket';
import PostModel from "./postModel";
import FrienqModel from "./frienqModel";

export default class FrienqNotificationModel {

    public static async getNotifications(user:any,id_last:number){
        
        var result = await database.select(
            "select frienq_notification.*, "+
            "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq "+
            "from frienq_notification "+
            "inner join frienq_member on frienq_member.uid=frienq_notification.uid_frienq "+
            "where frienq_notification.deleted=0 and frienq_notification.uid_owner=? and frienq_notification.id>? "+
            "order by frienq_notification.date_create desc limit 15 ",[user.uid,id_last]);
        
        if(result.length>0){
            for(var i=0;i<result.length;i++){
                result[i].frienq = JSON.parse(result[i].frienq);
                if(result[i].notification_type==1 || result[i].notification_type==3){
                    result[i].post = await PostModel.GetPost(user,result[i].notification_data);
                } 

                if(result[i].notification_type==3){
                    result[i].comment = await PostModel.GetComment(result[i].notification_data2);
                } 
            }
        }

        return result;
    }

    public static async getNotificationCount(user:any){
        
        var result = await database.select(
            "select count(*) as count "+
            "from frienq_notification "+
            "where frienq_notification.deleted=0 and frienq_notification.notified=0 and frienq_notification.uid_owner=? ",[user.uid]);

        return result[0].count;
    }

    public static async setNotified(id:number){
        var result = await database.executeQuery(["update frienq_notification set notified=1 where id=?"],[[id]]);
        return result;
    }

    public static async setAllNotified(id:number){
        var result = await database.executeQuery(["update frienq_notification set notified=1 where uid_owner=? and notified=0"],[[id]]);
        return result;
    }

    public static async sendNotifications(uid:string){
        
        const https = require('https');
        var user = await FrienqModel.findByID(uid);
        var result = await FrienqNotificationModel.getNotifications(user, 0);

        for(var i=0; i<result.length && i<1;i++){
            var item = result[i];
            var frienq = null;

            if(item.notified) continue;
            
            if(item.notification_data!=null) frienq = await FrienqModel.findByID(item.uid_frienq);

            var notification = {
                    notification : {
                        body : "Frienq",
                        title : "",
                        icon : `http://5.11.131.101:3000/Frienq/GetProfilePicture/?u=${frienq.uid}&f=${frienq.profile_picture}.jpg`
                    },
                    priority : "high",
                    data: {
                        click_action: "FLUTTER_NOTIFICATION_CLICK",
                        id : item.id,
                        notification : item,
                        status : "done"
                    },
                    condition : `'${uid}' in topics`
            }

            var notificationText = "";

            switch(item.notification_type){
                case 0:
                    notificationText = "started to be frienq to you."
                    break;
                default:
                    break;
            }

            notification.notification.title = `${frienq.name} ${frienq.surname} ${notificationText}`;

            var data = JSON.stringify(notification);

            const options = {
                hostname: 'fcm.googleapis.com',
                port: 443,
                path: '/fcm/send',
                method: 'POST',
                headers: {
                  'Content-Type': 'application/json',
                  'Content-Length': data.length,
                  'Authorization' : 'key=AAAAK5swcXA:APA91bGsRBY0ZpJzQV6IauPWB-vnrqjakN0NXPjQw2lVcYt60undrgy8LWSpawOusjWz-2OOTq4lqO70ckacqd1zCc6k-8OLwzgNEy_DvA2iRJc63IUQWFrC8Govs4Cbju3KDvmE_zSa'
                }
              }

              const req = https.request(options, (res:any) => { 
                  console.log(`statusCode: ${res.statusCode}`) 
                }
                );

                req.write(data);
                req.end();
        }

        //var clients = socket.findSocketByUID(uid);
        //if(clients!=null) {
        //    for(var i=0;i<clients.length;i++){
        //        var client = clients[i];
        //        var result = await FrienqNotificationModel.getNotifications(client.user, 0);
        //        client.socket.write('Notification::::'+JSON.stringify(result));
        //    }
        //}
    }

}