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
    authanticator(req, res, next) {
        //if(req.headers.token==null) res.end("unauthorized request !");
        next();
    }
    logger(req, res, next) {
        console.log('requested => ' + req.url + ' from ' + req.ip);
        next();
    }
}
exports.default = new Api().api;
//# sourceMappingURL=api.js.map