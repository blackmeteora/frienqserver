"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var emitter = require('events').EventEmitter;
const socket_1 = __importDefault(require("../socket"));
const frienqNotificationModel_1 = __importDefault(require("../model/frienqNotificationModel"));
class Events {
    constructor() {
        this.Event = new emitter();
    }
    Events() {
        this.Event.on(Events.SendNotification, function (data) {
            var client = socket_1.default.findSocketByUID(data);
            if (client != null) {
                var result = frienqNotificationModel_1.default.getNotifications(client.user);
                client.socket.write('Notification::::' + JSON.stringify(result));
            }
        });
    }
}
exports.default = Events;
Events.Instance = new Events();
Events.SendNotification = "SendNotification";
//# sourceMappingURL=events.js.map