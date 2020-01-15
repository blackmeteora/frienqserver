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
const path_1 = __importDefault(require("path"));
const fs_1 = __importDefault(require("fs"));
const resultModel_1 = __importDefault(require("../model/resultModel"));
const frienqModel_1 = __importDefault(require("../model/frienqModel"));
class FrienqController {
    Index(req, res) {
        res.end('Hello From Frienq Api !');
    }
    SearchFrienq(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = new resultModel_1.default();
            try {
                result.result = true;
                result.data = yield frienqModel_1.default.search(req.body.key);
            }
            catch (ex) {
                result.result = false;
                result.msg = ex.message;
            }
            res.send(result);
        });
    }
    FrienqOp(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var result = new resultModel_1.default();
            try {
                result.result = true;
                if (req.body.op == 1) {
                    result.data = yield frienqModel_1.default.frienq(req.body.uid_member, req.body.user.uid);
                }
                else {
                    result.data = yield frienqModel_1.default.unFrienq(req.body.uid_member, req.body.user.uid);
                }
                result.data = result.data["affectedRows"] == 1;
            }
            catch (ex) {
                result.result = false;
                result.msg = ex.message;
            }
            res.send(result);
        });
    }
    ProfilData(req, res) {
        res.send(req.body.user);
    }
    ProfilePicture(req, res) {
        if (req.headers["QueryString"].u != null && req.headers["QueryString"].f != null) {
            var file = path_1.default.resolve(`./data/user/${req.headers["QueryString"].u}/profilepicture/${req.headers["QueryString"].f}`);
            var image = fs_1.default.createReadStream(file);
            image.on('open', function () {
                //res.set('Content-Type', "image/jpeg");
                image.pipe(res);
            });
            image.on('error', function () {
                res.set('Content-Type', 'text/plain');
                res.status(404).end('404 - Not found');
            });
        }
        else {
            var result = new resultModel_1.default();
            var user = req.headers["user"];
            var tempPath = req.file.path;
            var fileExtension = path_1.default.extname(req.file.originalname).toLowerCase();
            var uuid = require("uuid/v4");
            var imageName = uuid();
            var targetFile = path_1.default.resolve(`./data/user/${user.uid}/profilepicture/${imageName}${fileExtension}`);
            var targetPath = path_1.default.resolve(`./data/user/${user.uid}/profilepicture/`);
            if (fileExtension === '.png' || fileExtension === '.jpg' || fileExtension === '.jpeg' || fileExtension === '.gif') {
                if (fs_1.default.existsSync(targetPath))
                    fs_1.default.rmdirSync(targetPath, { recursive: true });
                fs_1.default.mkdirSync(targetPath, { recursive: true });
                fs_1.default.rename(tempPath, targetFile, function (err) {
                    return __awaiter(this, void 0, void 0, function* () {
                        if (err) {
                            result.result = false;
                            result.msg = err.message;
                        }
                        ;
                        var ures = yield frienqModel_1.default.updateProfilePicture(user.uid, `${imageName}${fileExtension}`);
                        result.result = true;
                        result.data = `${imageName}${fileExtension}`;
                        res.send(result);
                    });
                });
            }
            else {
                fs_1.default.unlink(tempPath, function (err) {
                    result.result = false;
                    if (err)
                        result.msg = err.message;
                    else
                        result.msg = "Just Image Files Allowed !";
                    res.send(result);
                });
            }
        }
    }
}
exports.default = new FrienqController();
//# sourceMappingURL=frienqController.js.map