var emitter = require('events').EventEmitter;
import socket from '../socket';
import FrienqNotificationModel from '../model/frienqNotificationModel';

export default class Events{
    
    public static readonly Instance:Events = new Events();

    public Event:any = new emitter();

    public static SendNotification:String="SendNotification";

    Events(){
        this.Event.on(Events.SendNotification, function (data:String) {
            var client = socket.findSocketByUID(data);
            if(client!=null) {
                var result = FrienqNotificationModel.getNotifications(client.user);
                client.socket.write('Notification::::'+JSON.stringify(result));
            }
        });
    }
}
