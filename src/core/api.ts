import express from "express";
import {validationResult}  from "express-validator";
import bodyParser from "body-parser";
import router from "./router"
import {Request, Response} from "express";
import ResultModel from "../model/resultModel";
import FrienqModel from "../model/frienqModel";
var qs = require('querystring');

class Api {
    public api : express.Application;

    constructor(){
        this.api = express();
        this.config();
        router.ApplyRoutes(this.api);
    }

    private config(): void {
        this.api.use(bodyParser.json());
        this.api.use(bodyParser.urlencoded({
            extended: true
        }));
        this.api.use(this.logger);
        this.api.use(this.queryParser);
        this.api.use(this.authanticator);
        //this.api.use(this.validator);
    }

    private validator(req:Request, res:Response, next:any):void {
        var resultModel = new ResultModel();
        var errors = validationResult(req);
        if (!errors.isEmpty()) {
            resultModel.result = false;
            resultModel.msg = errors.array();
            res.status(422).end(resultModel);
        }
        next();
    }

    private queryParser(req:Request, res:Response, next:any):void {
        var str = "";
        if(req.url.split('?').length>1){
            str = req.url.split('?')[1];
        }
        req.headers["QueryString"] = qs.parse(str);
        next();
    }

    private authanticator(req:Request, res:Response, next:any):void{
        
        var guestRoute = [
            "/",
            "/auth/login",
            "/auth/register",
            "/auth/register/checkusername",
            "/definition/sex",
            "/frienq/getprofilepicture"
        ];
        
        if(guestRoute.indexOf(req.path.toLowerCase())>-1 || guestRoute.indexOf(req.path.substring(0,req.path.length-1).toLowerCase())>-1) next();
        else{
            var token = req.headers["access-token"];
            if(token==null) {
                res.status(401).end("Unauthorized Request !");
                return;
            }
            FrienqModel.findByToken(token.toString()).then((user)=>{
                if(user==null) res.status(401).end("Unauthorized Request !");
                else {
                    req.body.user = user;
                    req.headers["user"] = user;
                    next();
                }
            });
        }
    }

    private logger(req:Request, res:Response, next:any):void {
        console.log('requested => '+req.url+' from '+req.ip);
        next();
    }
}

export default new Api().api;