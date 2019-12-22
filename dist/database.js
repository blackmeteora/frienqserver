"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mariadb_1 = __importDefault(require("mariadb"));
const dbconfig_json_1 = __importDefault(require("./dbconfig.json"));
class DB {
    constructor() {
        this.Pool = mariadb_1.default.createPool(dbconfig_json_1.default);
    }
}
exports.default = new DB().Pool;
//# sourceMappingURL=database.js.map