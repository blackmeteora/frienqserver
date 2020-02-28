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
class PostModel {
    constructor() {
        this.explanation = "";
        this.count_rate = 0;
        this.count_commet = 0;
        this.order_no = 0;
        this.deleted = false;
        this.date_create = new Date();
        this.date_update = new Date();
        this.date_delete = new Date();
    }
    Save() {
        return __awaiter(this, void 0, void 0, function* () {
            var queries = new Array();
            var parameters = new Array();
            queries.push("insert into frienq_post (id,uid_member,id_type,id_def_security_level,location,lat,lan,explanation,count_rate,count_comment,deleted,date_create,date_update,date_delete) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            parameters.push([this.id, this.uid_member, this.id_type, this.id_def_security_level, this.location, this.lat, this.lan, this.explanation, this.count_rate, this.count_commet, this.deleted, this.date_create, this.date_update, this.date_delete]);
            for (var i = 0; i < this.items.length; i++) {
                queries.push("insert into frienq_post_item (id,id_post,id_type,link,explanation,rate,count_rate,order_no,deleted,date_create,date_update,date_delete) values (?,?,?,?,?,?,?,?,?,?,?,?)");
                parameters.push([
                    this.items[i].id,
                    this.items[i].id_post,
                    this.items[i].id_type,
                    this.items[i].link,
                    this.items[i].explanation,
                    this.items[i].rate,
                    this.items[i].count_rate,
                    this.items[i].order_no,
                    this.items[i].deleted,
                    this.items[i].date_create,
                    this.items[i].date_update,
                    this.items[i].date_delete
                ]);
            }
            try {
                var result = yield database_1.default.executeQuery(queries, parameters);
                return true;
            }
            catch (ex) {
                throw ex;
            }
        });
    }
    static GetPost(user, id_post) {
        return __awaiter(this, void 0, void 0, function* () {
            var postResult = yield database_1.default.select("select distinct frienq_post.*,case when frienq_rate.rate is null then 0 else frienq_rate.rate end as member_rate, case when frienq_post_item_select.id_post_item is null then '' else frienq_post_item_select.id_post_item end as member_select, " +
                "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq " +
                "from frienq_post " +
                "inner join frienq_member_frienq on frienq_member_frienq.uid_owner=frienq_post.uid_member or frienq_post.uid_member=? " +
                "inner join frienq_member on frienq_member.uid=frienq_post.uid_member " +
                "left join frienq_rate on frienq_post.uid_member=frienq_rate.uid_member_to and frienq_rate.id_object=frienq_post.id and frienq_rate.uid_member_from=?" +
                "left join frienq_post_item_select on frienq_post.uid_member=frienq_post_item_select.uid_member_to and frienq_post_item_select.id_post=frienq_post.id and frienq_post_item_select.uid_member_from=?" +
                "where frienq_member_frienq.uid_member=? and frienq_post.deleted=0 and frienq_post.id=? " +
                "order by frienq_post.date_create desc " +
                "limit 100", [user.uid, user.uid, user.uid, user.uid, id_post]);
            var postList = "";
            for (var i = 0; i < postResult.length; i++) {
                postList = postList + ",'" + postResult[i].id + "'";
                postResult[i].items = new Array();
                delete postResult[i].deleted;
            }
            var postItemResult = yield database_1.default.select("select frienq_post_item.* from frienq_post_item where deleted=0 and id_post in (''" + postList + ") order by order_no", []);
            for (var i = 0; i < postResult.length; i++) {
                for (var x = 0; x < postItemResult.length; x++) {
                    if (postResult[i].id == postItemResult[x].id_post) {
                        delete postItemResult[x].deleted;
                        postResult[i].items.push(postItemResult[x]);
                    }
                }
            }
            return postResult[0];
        });
    }
    static GetFeed(user, uid_member = "", lastPost = "") {
        return __awaiter(this, void 0, void 0, function* () {
            var params = [user.uid, user.uid, user.uid, user.uid];
            if (uid_member != "")
                params.push(uid_member);
            var postResult = yield database_1.default.select("select distinct frienq_post.*,case when frienq_rate.rate is null then 0 else frienq_rate.rate end as member_rate, case when frienq_post_item_select.id_post_item is null then '' else frienq_post_item_select.id_post_item end as member_select, " +
                "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq " +
                "from frienq_post " +
                "inner join frienq_member_frienq on frienq_member_frienq.uid_owner=frienq_post.uid_member or frienq_post.uid_member=? " +
                "inner join frienq_member on frienq_member.uid=frienq_post.uid_member " +
                "left join frienq_rate on frienq_post.uid_member=frienq_rate.uid_member_to and frienq_rate.id_object=frienq_post.id and frienq_rate.uid_member_from=?" +
                "left join frienq_post_item_select on frienq_post.uid_member=frienq_post_item_select.uid_member_to and frienq_post_item_select.id_post=frienq_post.id and frienq_post_item_select.uid_member_from=?" +
                "where frienq_member_frienq.uid_member=? and frienq_post.deleted=0 " + (uid_member != "" ? "and frienq_post.uid_member=? " : "") +
                "order by frienq_post.date_create desc " +
                "limit 100", params);
            var postList = "";
            for (var i = 0; i < postResult.length; i++) {
                postList = postList + ",'" + postResult[i].id + "'";
                postResult[i].items = new Array();
                delete postResult[i].deleted;
            }
            var postItemResult = yield database_1.default.select("select frienq_post_item.* from frienq_post_item where deleted=0 and id_post in (''" + postList + ")", []);
            for (var i = 0; i < postResult.length; i++) {
                for (var x = 0; x < postItemResult.length; x++) {
                    if (postResult[i].id == postItemResult[x].id_post) {
                        delete postItemResult[x].deleted;
                        postResult[i].items.push(postItemResult[x]);
                    }
                }
            }
            return postResult;
        });
    }
    static RatePost(userfrom, userto, postid, rate) {
        return __awaiter(this, void 0, void 0, function* () {
            var rateResult = yield database_1.default.executeQuery(["IF (select count(*) from frienq_rate where id_object=? and uid_member_from=? and uid_member_to=?)=0 then " +
                    "insert into frienq_rate (id_object,id_type,uid_member_from,uid_member_to,rate,notified,deleted,date_create,date_update,date_delete) values (?,?,?,?,?,?,?,?,?,?); " +
                    "else " +
                    "update frienq_rate set rate=?,deleted=? where id_object=? and uid_member_from=? and uid_member_to=?; " +
                    "end if;"], [[postid, userfrom, userto, postid, 0, userfrom, userto, rate, 0, rate == 0 ? 1 : 0, new Date(), new Date(), new Date(), rate, rate == 0 ? 1 : 0, postid, userfrom, userto]]);
            var postResult = yield database_1.default.select("select rate,count_rate from frienq_post where id=?", [postid]);
            return postResult[0];
        });
    }
    static RateList(postid) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_rate.rate, frienq_rate.date_create, " +
                "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq " +
                "from frienq_rate " +
                "inner join frienq_member on frienq_member.uid=frienq_rate.uid_member_from " +
                "where frienq_rate.deleted=0 and frienq_rate.id_object=? ", [postid]);
            if (result.length > 0) {
                for (var i = 0; i < result.length; i++)
                    result[i].frienq = JSON.parse(result[i].frienq);
            }
            return result;
        });
    }
    static DeletePost(user, postid) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.executeQuery(["update frienq_post set deleted=1, date_delete=? where id=? and uid_member=?"], [[new Date(), postid, user.uid]]);
            let res = result[0];
            return res["affectedRows"] == 1;
        });
    }
    static AddComment(user, uid_member, id_post, comment) {
        return __awaiter(this, void 0, void 0, function* () {
            var uuid = require("uuid/v4");
            var now = new Date();
            var result = yield database_1.default.executeQuery(["insert into frienq_post_comment (id, id_post, uid_member_from, uid_member_to, comment, rate, rate_count, notified, deleted, date_create, date_update, date_delete) values (?,?,?,?,?,?,?,?,?,?,?,?)"], [[uuid(), id_post, user.uid, uid_member, comment, 0, 0, 0, 0, now, now, now]]);
            let res = result[0];
            return res["affectedRows"] == 1;
        });
    }
    static UpdateComment(user, id_comment, comment) {
        return __awaiter(this, void 0, void 0, function* () {
            var uuid = require("uuid/v4");
            var now = new Date();
            var result = yield database_1.default.executeQuery([
                "insert into frienq_post_comment_history select * from frienq_post_comment where id=? and uid_member_from=?",
                "update frienq_post_comment set comment=?, date_update=? where id=? and uid_member_from=?"
            ], [[id_comment, user.uid], [comment, now, id_comment, user.uid]]);
            let res = result[1];
            return res["affectedRows"] == 1;
        });
    }
    static DeleteComment(user, id_comment) {
        return __awaiter(this, void 0, void 0, function* () {
            var uuid = require("uuid/v4");
            var now = new Date();
            var result = yield database_1.default.executeQuery([
                "update frienq_post_comment set deleted=1, date_delete=? where id=? and uid_member_from=?"
            ], [[now, id_comment, user.uid]]);
            let res = result[0];
            return res["affectedRows"] == 1;
        });
    }
    static GetCommentList(postid) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_post_comment.id, frienq_post_comment.comment, frienq_post_comment.date_create, frienq_post_comment.date_update, " +
                "JSON_OBJECT('uid',frienq_member.uid, 'name',frienq_member.name, 'surname',frienq_member.surname, 'username',frienq_member.username , 'profile_picture',frienq_member.profile_picture) as frienq " +
                "from frienq_post_comment " +
                "inner join frienq_member on frienq_member.uid=frienq_post_comment.uid_member_from " +
                "where frienq_post_comment.deleted=0 and frienq_post_comment.id_post=? " +
                "order by frienq_post_comment.date_create", [postid]);
            if (result.length > 0) {
                for (var i = 0; i < result.length; i++)
                    result[i].frienq = JSON.parse(result[i].frienq);
            }
            return result;
        });
    }
    static GetComment(id_comment) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_post_comment.id, frienq_post_comment.comment, frienq_post_comment.date_create, frienq_post_comment.date_update " +
                "from frienq_post_comment " +
                "where frienq_post_comment.deleted=0 and frienq_post_comment.id=? ", [id_comment]);
            return result;
        });
    }
    static GetCommentHistoryList(id_comment) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = yield database_1.default.select("select frienq_post_comment_history.id, frienq_post_comment_history.comment, frienq_post_comment_history.date_create, frienq_post_comment_history.date_update from frienq_post_comment_history where id=? order by frienq_post_comment_history.date_update", [id_comment]);
            return result;
        });
    }
    static VotePost(userfrom, userto, postid, postitemid) {
        return __awaiter(this, void 0, void 0, function* () {
            var rateResult = yield database_1.default.executeQuery([
                "delete from frienq_post_item_select where id_post=? and uid_member_from=?",
                "insert into frienq_post_item_select (id_post,uid_member_from,id_post_item,uid_member_to) values (?,?,?,?)"
            ], [[postid, userfrom.uid], [postid, userfrom.uid, postitemid, userto]]);
            let res = rateResult[1];
            return res["affectedRows"] == 1;
        });
    }
}
exports.default = PostModel;
//# sourceMappingURL=postModel.js.map