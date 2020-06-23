"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const homeController_1 = __importDefault(require("../controller/homeController"));
const definitionController_1 = __importDefault(require("../controller/definitionController"));
const authController_1 = __importDefault(require("../controller/authController"));
const frienqController_1 = __importDefault(require("../controller/frienqController"));
const postController_1 = __importDefault(require("../controller/postController"));
const post_auth_register_1 = __importDefault(require("../validator/post_auth_register"));
const post_auth_login_1 = __importDefault(require("../validator/post_auth_login"));
var multer = require('multer');
var upload = multer({ dest: 'uploads/' });
class Router {
    ApplyRoutes(api) {
        //Begin Home Controller
        api.route("/").get(homeController_1.default.Index);
        //End Home Controller
        //Begin Definition Controller
        api.route("/Definition/Sex").get(definitionController_1.default.Sex);
        //End Definition Controller
        //Begin Auth Controller
        api.post("/Auth/Login", post_auth_login_1.default, authController_1.default.Login);
        api.post("/Auth/Register", post_auth_register_1.default, authController_1.default.Register);
        api.post("/Auth/Register/CheckUserName", authController_1.default.CheckUserName);
        //End Auth Controller
        //Begin Frienq Controller
        api.get("/Frienq/ClearNotifications", frienqController_1.default.ClearNotifications);
        api.get("/Frienq/GetProfilePicture", frienqController_1.default.ProfilePicture);
        api.get("/Frienq/Notifications", frienqController_1.default.Notifications);
        api.get("/Frienq/NotificationCount", frienqController_1.default.NotificationCount);
        api.post("/Frienq/ProfilePicture", upload.single('image'), frienqController_1.default.ProfilePicture);
        api.post("/Frienq/ProfilData", frienqController_1.default.ProfilData);
        api.post("/Frienq/SearchFrienq", frienqController_1.default.SearchFrienq);
        api.post("/Frienq/FrienqOp", frienqController_1.default.FrienqOp);
        api.post("/Frienq/FrienqList", frienqController_1.default.FrienqList);
        //End Auth Controller
        //Begin Post Controller
        api.get("/Post/Media", postController_1.default.Media);
        api.post("/Post/Feed", postController_1.default.Feed);
        api.post("/Post/FeedCount", postController_1.default.FeedCount);
        api.post("/Post/GetPost", postController_1.default.GetPost);
        api.post("/Post/RatePost", postController_1.default.RatePost);
        api.post("/Post/RateList", postController_1.default.RateList);
        api.post("/Post/DeletePost", postController_1.default.DeletePost);
        api.post("/Post/Create", upload.any(), postController_1.default.Create);
        api.post("/Post/AddComment", postController_1.default.AddComment);
        api.post("/Post/UpdateComment", postController_1.default.UpdateComment);
        api.post("/Post/DeleteComment", postController_1.default.DeleteComment);
        api.post("/Post/CommentList", postController_1.default.CommentList);
        api.post("/Post/CommentHistoryList", postController_1.default.CommentHistoryList);
        api.post("/Post/VotePost", postController_1.default.VotePost);
        api.post("/Post/VoteList", postController_1.default.VoteList);
        //End Post Controller
    }
}
exports.default = new Router();
//# sourceMappingURL=router.js.map