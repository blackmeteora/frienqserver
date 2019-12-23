import express from "express";
import HomeController from "./controller/homeController";
import DefinitionController from "./controller/definitionController";
import AuthController from "./controller/authController";
import authController from "./controller/authController";
import v_post_auth_register from "./validator/post_auth_register";

class Router{
    public ApplyRoutes(api : express.Application){    
        //Begin Home Controller
        api.route("/").get(HomeController.Index);
        //End Home Controller

        //Begin Definition Controller
        api.route("/Definition/Sex").get(DefinitionController.Sex);
        //End Definition Controller

        //Begin Auth Controller
        api.route("/Auth/Login").post(AuthController.Login);
        api.post("/Auth/Register", v_post_auth_register, authController.Register);
        
        //End Auth Controller
    }
}

export default new Router();