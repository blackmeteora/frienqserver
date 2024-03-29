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
const database_1 = __importDefault(require("../core/database"));
const resultModel_1 = __importDefault(require("../model/resultModel"));
class DefinitionController {
    Sex(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            var resultModel = new resultModel_1.default();
            try {
                resultModel.data = yield database_1.default.select("select * from frienq_def_sex");
                resultModel.result = true;
            }
            catch (ex) {
                resultModel.result = false;
                resultModel.data = null;
                resultModel.msg = ex;
            }
            res.send(resultModel);
        });
    }
}
exports.default = new DefinitionController();
//# sourceMappingURL=definitionController.js.map