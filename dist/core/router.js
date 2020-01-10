"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const homeController_1 = __importDefault(require("../controller/homeController"));
const definitionController_1 = __importDefault(require("../controller/definitionController"));
const authController_1 = __importDefault(require("../controller/authController"));
const frienqController_1 = __importDefault(require("../controller/frienqController"));
const post_auth_register_1 = __importDefault(require("../validator/post_auth_register"));
const post_auth_login_1 = __importDefault(require("../validator/post_auth_login"));
var multer = require('multer');
var upload = multer({ dest: 'uploads/' });
class Router {
    ApplyRoutes(api) {
        //Begin Home Controller
        api.route("/").get(homeController_1.default.Index);
        //End Home Controller
        //Begin Definition Controller
        api.route("/Definition/Sex").get(definitionController_1.default.Sex);
        //End Definition Controller
        //Begin Auth Controller
        api.post("/Auth/Login", post_auth_login_1.default, authController_1.default.Login);
        api.post("/Auth/Register", post_auth_register_1.default, authController_1.default.Register);
        //End Auth Controller
        //Begin Frienq Controller
        api.get("/Frienq/ProfilData", frienqController_1.default.ProfilData);
        api.get("/Frienq/ProfilePicture", frienqController_1.default.ProfilePicture);
        api.post("/Frienq/ProfilePicture", upload.single('image'), frienqController_1.default.ProfilePicture);
        //End Auth Controller
    }
}
exports.default = new Router();
//# sourceMappingURL=router.js.map