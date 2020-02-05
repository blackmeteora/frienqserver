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
    static getNotifications(user) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_notification.*, " +
                "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq " +
                "from frienq_notification " +
                "inner join frienq_member on frienq_member.uid=frienq_notification.uid_frienq " +
                "where frienq_notification.deleted=0 and frienq_notification.uid_owner=? " +
                "limit 100", [user.uid]);
            if (result.length > 0) {
                result.forEach((element) => __awaiter(this, void 0, void 0, function* () {
                    element.frienq = JSON.parse(element.frienq);
                    if (element.notification_type == 1)
                        element.post = yield postModel_1.default.GetPost(user, element.notification_data);
                }));
            }
            return result;
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
            var client = socket_1.default.findSocketByUID(uid);
            if (client != null) {
                var result = yield FrienqNotificationModel.getNotifications(client.user);
                client.socket.write('Notification::::' + JSON.stringify(result));
            }
        });
    }
}
exports.default = FrienqNotificationModel;
//# sourceMappingURL=frienqNotificationModel.js.map