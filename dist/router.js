"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const homeController_1 = __importDefault(require("./controller/homeController"));
const definitionController_1 = __importDefault(require("./controller/definitionController"));
const authController_1 = __importDefault(require("./controller/authController"));
class Router {
    ApplyRoutes(api) {
        //Begin Home Controller
        api.route("/").get(homeController_1.default.Index);
        //End Home Controller
        //Begin Definition Controller
        api.route("/Definition/Sex").get(definitionController_1.default.Sex);
        //End Definition Controller
        //Begin Auth Controller
        api.route("/Auth/Login").post(authController_1.default.Login);
        //End Auth Controller
    }
}
exports.default = new Router();
//# sourceMappingURL=router.js.map