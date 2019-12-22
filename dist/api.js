"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const body_parser_1 = __importDefault(require("body-parser"));
const router_1 = __importDefault(require("./router"));
class Api {
    constructor() {
        this.api = express_1.default();
        this.config();
        router_1.default.ApplyRoutes(this.api);
    }
    config() {
        this.api.use(body_parser_1.default.json());
        this.api.use(body_parser_1.default.urlencoded({
            extended: false
        }));
        this.api.use(this.logger);
    }
    logger(req, res, next) {
        console.log('requested => ' + req.url + ' from ' + req.ip);
        next();
    }
}
exports.default = new Api().api;
//# sourceMappingURL=api.js.map