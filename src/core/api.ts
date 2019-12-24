import express from "express";
import bodyParser from "body-parser";
import router from "./router"
import {Request, Response} from "express";

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
        this.api.use(this.authanticator);
    }

    private authanticator(req:Request, res:Response, next:any):void{
        //if(req.headers.token==null) res.end("unauthorized request !");
        
        next();
    }

    private logger(req:Request, res:Response, next:any):void {
        console.log('requested => '+req.url+' from '+req.ip);
        next();
    }
}

export default new Api().api;