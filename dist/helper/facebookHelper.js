"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const resultModel_1 = __importDefault(require("../model/resultModel"));
const frienqModel_1 = __importDefault(require("../model/frienqModel"));
class FacebookHelper {
    static Connect(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            const https = require('https');
            const options = {
                hostname: 'graph.facebook.com',
                port: 443,
                path: `/v2.12/me?fields=name,first_name,last_name,email,link&access_token=${req.body.frienq_member_application.data_facebook.token}`,
                method: 'GET'
            };
            const _req = https.request(options, (_res) => __awaiter(this, void 0, void 0, function* () {
                res.on('data', (data) => __awaiter(this, void 0, void 0, function* () {
                    if (data.id == req.body.frienq_member_application.data_facebook.id) {
                        var frienq = frienqModel_1.default.findByApplication(data.id, "facebook");
                        if (frienq === undefined) {
                            req.body.name = data.first_name;
                            req.body.surname = data.last_name;
                            req.body.email = data.email;
                            //this.username = req.body.username;
                            //this.id_sex = req.body.id_sex;
                            //this.date_birth = req.body.date_birth;
                            var newFrienq = new frienqModel_1.default();
                            newFrienq.FillFromRequest(req);
                            var cretedFrienq = newFrienq.Create();
                            if (cretedFrienq == undefined) {
                                resultModel.result = false;
                                resultModel.msg = "Facebook Login Error - Uncaught";
                                res.end(resultModel);
                                return;
                            }
                        }
                        resultModel.result = true;
                        resultModel.data = yield frienqModel_1.default.getApplicationLoginToken(data.id, "facebook");
                        if (resultModel.data == null)
                            throw new Error("Unauthorized Login !");
                    }
                    else {
                        resultModel.result = false;
                        resultModel.msg = "Facebook Login Error - Invalid Token";
                        res.end(resultModel);
                    }
                }));
            }));
            _req.on('error', (error) => {
                resultModel.result = false;
                resultModel.msg = "Facebook Login Error - " + error.toString();
                res.end(resultModel);
            });
            _req.end();
        });
    }
}
exports.default = FacebookHelper;
//# sourceMappingURL=facebookHelper.js.map