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
const mariadb_1 = __importDefault(require("mariadb"));
const dbconfig_json_1 = __importDefault(require("../dbconfig.json"));
class DB {
    constructor() {
        if (DB.Pool == null)
            DB.Pool = mariadb_1.default.createPool(dbconfig_json_1.default);
    }
    executeQuery(query, params = undefined) {
        return __awaiter(this, void 0, void 0, function* () {
            var Conn = yield DB.Pool.getConnection();
            try {
                Conn.beginTransaction();
                var result = Array();
                for (var i = 0; i < query.length; i++)
                    result.push(yield Conn.query(query[i], params[i]));
                Conn.commit();
                Conn.release();
                return result;
            }
            catch (ex) {
                Conn.rollback();
                Conn.release();
                throw ex;
            }
        });
    }
    select(query, params = undefined) {
        return __awaiter(this, void 0, void 0, function* () {
            var Conn = yield DB.Pool.getConnection();
            try {
                var result = Conn.query(query, params);
                Conn.release();
                return result;
            }
            catch (ex) {
                Conn.release();
                throw ex;
            }
        });
    }
}
exports.default = new DB();
//# sourceMappingURL=database.js.map