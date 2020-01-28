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
const net_1 = __importDefault(require("net"));
const socketModel_1 = __importDefault(require("./model/socketModel"));
const frienqModel_1 = __importDefault(require("./model/frienqModel"));
let netserver = net_1.default.createServer();
var socketlist = [];
function findSocketByToken(token) {
    for (var i = 0; i < socketlist.length; i++) {
        if (socketlist[i].token == token)
            return socketlist[i];
    }
    return null;
}
function findSocketByUID(uid) {
    for (var i = 0; i < socketlist.length; i++) {
        if (socketlist[i].user.uid == uid)
            return socketlist[i];
    }
    return null;
}
netserver.on("connection", function (socket) {
    var lport = socket.localPort;
    var laddr = socket.localAddress;
    console.log('Server is listening at LOCAL port' + lport);
    console.log('Server LOCAL ip :' + laddr);
    console.log('------------remote client info --------------');
    var rport = socket.remotePort;
    var raddr = socket.remoteAddress;
    var rfamily = socket.remoteFamily;
    console.log('REMOTE Socket is listening at port' + rport);
    console.log('REMOTE Socket ip :' + raddr);
    console.log('REMOTE Socket is IP4/IP6 : ' + rfamily);
    console.log('--------------------------------------------');
    //var no_of_connections =  server.getConnections(); // sychronous version
    netserver.getConnections(function (error, count) {
        console.log('Number of concurrent connections to the server : ' + count);
    });
    socket.setEncoding('utf8');
    socket.setTimeout(80000000, function () {
        // called after timeout -> same as socket.on('timeout')
        // it just tells that soket timed out => its ur job to end or destroy the socket.
        // socket.end() vs socket.destroy() => end allows us to send final data and allows some i/o activity to finish before destroying the socket
        // whereas destroy kills the socket immediately irrespective of whether any i/o operation is goin on or not...force destry takes place
        console.log('Socket timed out');
    });
    socket.on('data', function (data) {
        return __awaiter(this, void 0, void 0, function* () {
            var bread = socket.bytesRead;
            var bwrite = socket.bytesWritten;
            console.log('Bytes read : ' + bread);
            console.log('Bytes written : ' + bwrite);
            console.log('Data sent to server : ' + data);
            var netdata = data.split('::::');
            var user = yield frienqModel_1.default.findByToken(netdata[0]);
            if (user == null)
                socket.destroy();
            if (netdata.length != 3) {
                socket.write('Data::::Invalid Protocol');
                //socket.flush();
                return;
            }
            if (netdata[2] == "Hello") {
                var old = findSocketByToken(netdata[0]);
                if (old == null)
                    socketlist.push(new socketModel_1.default(netdata[0], socket, user));
                else {
                    old.socket = socket;
                }
                socket.write('Data::::Hello');
                //setTimeout(function(){socket.write('Data::::Out Stream');},5000);
            }
        });
    });
    socket.on('drain', function () {
        console.log('write buffer is empty now .. u can resume the writable stream');
        socket.resume();
    });
    socket.on('error', function (error) {
        console.log('Error : ' + error);
    });
    socket.on('timeout', function () {
        console.log('Socket timed out !');
        socket.end('Timed out!');
        // can call socket.destroy() here too.
    });
    socket.on('end', function (data) {
        console.log('Socket ended from other end!');
        console.log('End data : ' + data);
    });
    socket.on('close', function (error) {
        var bread = socket.bytesRead;
        var bwrite = socket.bytesWritten;
        console.log('Bytes read : ' + bread);
        console.log('Bytes written : ' + bwrite);
        console.log('Socket closed!');
        if (error) {
            console.log('Socket was closed coz of transmission error');
        }
    });
    /*setTimeout(function(){
        var isdestroyed = socket.destroyed;
        console.log('Socket destroyed:' + isdestroyed);
        socket.destroy();
    },1200000);*/
});
netserver.on('close', function () {
    console.log('Server closed !');
});
exports.default = { server: netserver, socketlist: socketlist, findSocketByToken: findSocketByToken, findSocketByUID: findSocketByUID };
//# sourceMappingURL=socket.js.map