"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const api_1 = __importDefault(require("./core/api"));
const http_1 = __importDefault(require("http"));
const socket_1 = __importDefault(require("./socket"));
var PORT = 3000;
const SPORT = 3001;
const server = http_1.default.createServer(api_1.default);
socket_1.default.server.listen(SPORT);
server.listen(PORT, () => {
    console.log('listening on port ' + PORT);
});
//# sourceMappingURL=server.js.map