var emitter = require('events').EventEmitter;
import socket from '../socket';
import FrienqNotificationModel from '../model/frienqNotificationModel';

export default class Events{
    
    public static readonly Instance:Events = new Events();

    public Event:any = new emitter();

    public static SendNotification:String="SendNotification";

    Events(){
        this.Event.on(Events.SendNotification, function (data:String) {
            var clients = socket.findSocketByUID(data);
            if(clients!=null) {
                for(var i=0; i<clients.length;i++){
                    var client = clients[i];
                    var result = FrienqNotificationModel.getNotifications(client.user, 0);
                    client.socket.write('Notification::::'+JSON.stringify(result));
                }
            }
        });
    }
}
