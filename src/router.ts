import express from "express";
import HomeController from "./controller/homeController";
import DefinitionController from "./controller/definitionController";
import AuthController from "./controller/authController";

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
        //End Auth Controller
    }
}

export default new Router();