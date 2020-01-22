"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const api_1 = __importDefault(require("./core/api"));
const http_1 = __importDefault(require("http"));
const PORT = process.env.PORT || 3000;
const server = http_1.default.createServer(api_1.default);
let socket = require("socket.io")(http_1.default);
socket.on("connection", function (socket) {
    console.log("a user connected");
});
api_1.default.listen(PORT, () => {
    console.log('listening on port ' + PORT);
});
//# sourceMappingURL=server.js.map