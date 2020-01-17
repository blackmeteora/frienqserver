import express from "express";
import HomeController from "../controller/homeController";
import DefinitionController from "../controller/definitionController";
import AuthController from "../controller/authController";
import FrienqController from "../controller/frienqController";
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
        api.get("/Frienq/GetProfilePicture", FrienqController.ProfilePicture);
        api.post("/Frienq/ProfilePicture",upload.single('image'), FrienqController.ProfilePicture);
        api.post("/Frienq/ProfilData", FrienqController.ProfilData);
        api.post("/Frienq/SearchFrienq", FrienqController.SearchFrienq);
        api.post("/Frienq/FrienqOp", FrienqController.FrienqOp);
        //End Auth Controller
    }
}

export default new Router();