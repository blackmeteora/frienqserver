"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const express_validator_1 = require("express-validator");
const body_parser_1 = __importDefault(require("body-parser"));
const router_1 = __importDefault(require("./router"));
const resultModel_1 = __importDefault(require("../model/resultModel"));
const frienqModel_1 = __importDefault(require("../model/frienqModel"));
var qs = require('querystring');
class Api {
    constructor() {
        this.api = express_1.default();
        this.config();
        router_1.default.ApplyRoutes(this.api);
    }
    config() {
        this.api.use(body_parser_1.default.json());
        this.api.use(body_parser_1.default.urlencoded({
            extended: true
        }));
        this.api.use(this.logger);
        this.api.use(this.queryParser);
        this.api.use(this.authanticator);
        //this.api.use(this.validator);
    }
    validator(req, res, next) {
        var resultModel = new resultModel_1.default();
        var errors = express_validator_1.validationResult(req);
        if (!errors.isEmpty()) {
            resultModel.result = false;
            resultModel.msg = errors.array();
            res.status(422).end(resultModel);
        }
        next();
    }
    queryParser(req, res, next) {
        var str = "";
        if (req.url.split('?').length > 1) {
            str = req.url.split('?')[1];
        }
        req.headers["QueryString"] = qs.parse(str);
        next();
    }
    authanticator(req, res, next) {
        var guestRoute = [
            "/",
            "/auth/login",
            "/auth/register",
            "/definition/sex",
            "/frienq/getprofilepicture"
        ];
        if (guestRoute.indexOf(req.path.toLowerCase()) > -1 || guestRoute.indexOf(req.path.substring(0, req.path.length - 1).toLowerCase()) > -1)
            next();
        else {
            var token = req.headers["access-token"];
            if (token == null) {
                res.status(401).end("Unauthorized Request !");
                return;
            }
            frienqModel_1.default.findByToken(token.toString()).then((user) => {
                if (user == null)
                    res.status(401).end("Unauthorized Request !");
                else {
                    req.body.user = user;
                    req.headers["user"] = user;
                    next();
                }
            });
        }
    }
    logger(req, res, next) {
        console.log('requested => ' + req.url + ' from ' + req.ip);
        next();
    }
}
exports.default = new Api().api;
//# sourceMappingURL=api.js.map