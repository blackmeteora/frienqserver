"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const database_1 = __importDefault(require("../core/database"));
const socket_1 = __importDefault(require("../socket"));
const postModel_1 = __importDefault(require("./postModel"));
class FrienqNotificationModel {
    static getNotifications(user, id_last) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_notification.*, " +
                "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq " +
                "from frienq_notification " +
                "inner join frienq_member on frienq_member.uid=frienq_notification.uid_frienq " +
                "where frienq_notification.deleted=0 and frienq_notification.uid_owner=? and frienq_notification.id>? " +
                "order by frienq_notification.date_create desc limit 15 ", [user.uid, id_last]);
            if (result.length > 0) {
                for (var i = 0; i < result.length; i++) {
                    result[i].frienq = JSON.parse(result[i].frienq);
                    if (result[i].notification_type == 1 || result[i].notification_type == 3) {
                        result[i].post = yield postModel_1.default.GetPost(user, result[i].notification_data);
                    }
                    if (result[i].notification_type == 3) {
                        result[i].comment = yield postModel_1.default.GetComment(result[i].notification_data2);
                    }
                }
            }
            return result;
        });
    }
    static getNotificationCount(user) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select count(*) as count " +
                "from frienq_notification " +
                "where frienq_notification.deleted=0 and frienq_notification.notified=0 and frienq_notification.uid_owner=? ", [user.uid]);
            return result[0].count;
        });
    }
    static setNotified(id) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.executeQuery(["update frienq_notification set notified=1 where id=?"], [[id]]);
            return result;
        });
    }
    static setAllNotified(id) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.executeQuery(["update frienq_notification set notified=1 where uid_owner=? and notified=0"], [[id]]);
            return result;
        });
    }
    static sendNotifications(uid) {
        return __awaiter(this, void 0, void 0, function* () {
            var clients = socket_1.default.findSocketByUID(uid);
            if (clients != null) {
                for (var i = 0; i < clients.length; i++) {
                    var client = clients[i];
                    var result = yield FrienqNotificationModel.getNotifications(client.user, 0);
                    client.socket.write('Notification::::' + JSON.stringify(result));
                }
            }
        });
    }
}
exports.default = FrienqNotificationModel;
//# sourceMappingURL=frienqNotificationModel.js.map