import express from "express";
import HomeController from "../controller/homeController";
import DefinitionController from "../controller/definitionController";
import AuthController from "../controller/authController";
import FrienqController from "../controller/frienqController";
import PostController from "../controller/postController";
import v_post_auth_register from "../validator/post_auth_register";
import v_post_auth_login from "../validator/post_auth_login";
var multer  = require('multer');
var upload = multer({dest: 'uploads/'})

class Router{
    public ApplyRoutes(api : express.Application){    
        //Begin Home Controller
        api.route("/").get(HomeController.Index);
        //End Home Controller

        //Begin Definition Controller
        api.route("/Definition/Sex").get(DefinitionController.Sex);
        //End Definition Controller

        //Begin Auth Controller
        api.post("/Auth/Login", v_post_auth_login, AuthController.Login);
        api.post("/Auth/Register", v_post_auth_register, AuthController.Register);
        api.post("/Auth/Register/CheckUserName", AuthController.CheckUserName);
        //End Auth Controller

        //Begin Frienq Controller
        api.get("/Frienq/ClearNotifications", FrienqController.ClearNotifications);
        api.get("/Frienq/GetProfilePicture", FrienqController.ProfilePicture);
        api.get("/Frienq/Notifications", FrienqController.Notifications);
        api.get("/Frienq/NotificationCount", FrienqController.NotificationCount);
        api.post("/Frienq/ProfilePicture",upload.single('image'), FrienqController.ProfilePicture);
        api.post("/Frienq/ProfilData", FrienqController.ProfilData);
        api.post("/Frienq/SearchFrienq", FrienqController.SearchFrienq);
        api.post("/Frienq/FrienqOp", FrienqController.FrienqOp);
        api.post("/Frienq/FrienqList", FrienqController.FrienqList);
        //End Auth Controller

        //Begin Post Controller
        api.get("/Post/Media", PostController.Media);
        api.post("/Post/Feed", PostController.Feed);
        api.post("/Post/FeedCount", PostController.FeedCount);
        api.post("/Post/GetPost", PostController.GetPost);
        api.post("/Post/RatePost", PostController.RatePost);
        api.post("/Post/RateList", PostController.RateList);
        api.post("/Post/DeletePost", PostController.DeletePost);
        api.post("/Post/Create",upload.any(), PostController.Create);
        api.post("/Post/AddComment", PostController.AddComment);
        api.post("/Post/UpdateComment", PostController.UpdateComment);
        api.post("/Post/DeleteComment", PostController.DeleteComment);
        api.post("/Post/CommentList", PostController.CommentList);
        api.post("/Post/CommentHistoryList", PostController.CommentHistoryList);
        api.post("/Post/VotePost", PostController.VotePost);
        api.post("/Post/VoteList", PostController.VoteList);
        //End Post Controller
    }
}

export default new Router();