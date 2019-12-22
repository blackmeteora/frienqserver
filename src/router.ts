import express from "express";
import HomeController from "./controller/homeController";
import DefinitionController from "./controller/definitionController";

class Router{
    public ApplyRoutes(api : express.Application){    
        api.route("/").get(HomeController.Index);
        api.route("/Definition/Sex").get(DefinitionController.Sex);
    }
}

export default new Router();