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
const resultModel_1 = __importDefault(require("../model/resultModel"));
const postItemModel_1 = __importDefault(require("../model/postItemModel"));
const path_1 = __importDefault(require("path"));
const fs_1 = __importDefault(require("fs"));
const postModel_1 = __importDefault(require("../model/postModel"));
const frienqNotificationModel_1 = __importDefault(require("../model/frienqNotificationModel"));
class PostController {
    Create(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                var user = req.headers["user"];
                var uuid = require("uuid/v4");
                var post = new postModel_1.default();
                post.id = uuid();
                post.uid_member = user.uid;
                post.id_type = req.body.id_type;
                post.id_def_security_level = req.body.id_def_security_level;
                post.lat = req.body.lat;
                post.lan = req.body.lan;
                post.location = req.body.location;
                post.explanation = req.body.explanation;
                post.items = new Array();
                for (var i = 0; req.files != null && i < req.files.length; i++) {
                    var tempPath = req.files[i].path;
                    var fileExtension = path_1.default.extname(req.files[i].originalname).toLowerCase();
                    var imageName = uuid();
                    var targetFile = path_1.default.resolve(`./data/user/${user.uid}/post/${post.id}/${imageName}${fileExtension}`);
                    var targetPath = path_1.default.resolve(`./data/user/${user.uid}/post/${post.id}/`);
                    if (fileExtension === '.png' || fileExtension === '.jpg' || fileExtension === '.jpeg' || fileExtension === '.gif' || fileExtension === '.mp4' || fileExtension === '.mov') {
                        if (fs_1.default.existsSync(targetPath))
                            fs_1.default.rmdirSync(targetPath, { recursive: true });
                        fs_1.default.mkdirSync(targetPath, { recursive: true });
                        fs_1.default.rename(tempPath, targetFile, function (err) {
                            return __awaiter(this, void 0, void 0, function* () {
                                if (err) {
                                    resultModel.result = false;
                                    resultModel.msg = err.message;
                                    res.send(resultModel);
                                }
                                ;
                            });
                        });
                        var postItem = new postItemModel_1.default();
                        postItem.id = uuid();
                        postItem.id_post = post.id;
                        postItem.id_type = 0;
                        postItem.link = `${imageName}${fileExtension}`;
                        postItem.rate = 0;
                        postItem.count_rate = 0;
                        postItem.deleted = false;
                        postItem.date_create = new Date();
                        postItem.date_update = new Date();
                        postItem.date_delete = new Date();
                        post.items.push(postItem);
                    }
                    else {
                        fs_1.default.unlink(tempPath, function (err) {
                            resultModel.result = false;
                            if (err)
                                resultModel.msg = err.message;
                            else
                                resultModel.msg = "Just Image Files Allowed !";
                            res.send(resultModel);
                        });
                    }
                }
                if (req.body.items != null && req.body.items.length > 0) {
                    for (var i = 0; i < req.body.items.length; i++) {
                        var postItem = new postItemModel_1.default();
                        postItem.id = uuid();
                        postItem.id_post = post.id;
                        postItem.id_type = 0;
                        postItem.link = '';
                        postItem.rate = 0;
                        postItem.count_rate = 0;
                        postItem.deleted = false;
                        postItem.explanation = req.body.items[i].explanation;
                        postItem.order_no = req.body.items[i].order_no;
                        postItem.date_create = new Date();
                        postItem.date_update = new Date();
                        postItem.date_delete = new Date();
                        post.items.push(postItem);
                    }
                }
                if (resultModel.result == true) {
                    resultModel.data = yield post.Save();
                    res.send(resultModel);
                }
                else {
                    resultModel.msg = "Unknown Error At Sending Post !";
                    res.send(resultModel);
                }
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
                res.send(resultModel);
            }
        });
    }
    Media(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            if (req.headers["QueryString"].u != null && req.headers["QueryString"].p != null && req.headers["QueryString"].f != null) {
                var file = path_1.default.resolve(`./data/user/${req.headers["QueryString"].u}/post/${req.headers["QueryString"].p}/${req.headers["QueryString"].f}`);
                var image = fs_1.default.createReadStream(file);
                image.on('open', function () {
                    //res.set('Content-Type', "image/jpeg");
                    image.pipe(res);
                });
                image.on('error', function () {
                    res.set('Content-Type', 'text/plain');
                    res.status(404).end('404 - Not found');
                });
            }
            else {
                res.set('Content-Type', 'text/plain');
                res.status(404).end('404 - Not found');
            }
        });
    }
    Feed(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            var user = req.body.user;
            var lastPost = req.body.lastPost;
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.GetFeed(user, req.body.uid_member, "");
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    GetPost(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            var user = req.body.user;
            var lastPost = req.body.lastPost;
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.GetPost(user, req.body.id_post);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    RatePost(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.RatePost(req.body.user.uid, req.body.uid_member, req.body.id_post, req.body.rate);
                frienqNotificationModel_1.default.sendNotifications(req.body.uid_member);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    RateList(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.RateList(req.body.id_post);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    DeletePost(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.DeletePost(req.body.user, req.body.id_post);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    AddComment(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.AddComment(req.body.user, req.body.uid_member, req.body.id_post, req.body.comment);
                frienqNotificationModel_1.default.sendNotifications(req.body.uid_member);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    UpdateComment(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.UpdateComment(req.body.user, req.body.id_comment, req.body.comment);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    DeleteComment(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.DeleteComment(req.body.user, req.body.id_comment);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    CommentList(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.GetCommentList(req.body.id_post);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    CommentHistoryList(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.GetCommentHistoryList(req.body.id_comment);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
    VotePost(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.result = true;
                resultModel.data = yield postModel_1.default.VotePost(req.body.user, req.body.uid_member, req.body.id_post, req.body.id_post_item);
                frienqNotificationModel_1.default.sendNotifications(req.body.uid_member);
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.msg = ex.message;
            }
            res.send(resultModel);
        });
    }
}
exports.default = new PostController();
//# sourceMappingURL=postController.js.map