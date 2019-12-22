"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const homeController_1 = __importDefault(require("./controller/homeController"));
const definitionController_1 = __importDefault(require("./controller/definitionController"));
class Router {
    ApplyRoutes(api) {
        api.route("/").get(homeController_1.default.Index);
        api.route("/Definition/Sex").get(definitionController_1.default.Sex);
    }
}
exports.default = new Router();
//# sourceMappingURL=router.js.map