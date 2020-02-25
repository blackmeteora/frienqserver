import net from "net";
import SocketModel from './model/socketModel';
import FrienqModel from './model/frienqModel';

let netserver = net.createServer();
var socketlist:SocketModel[] = [];

function findSocketByToken(token:String){
    for(var i=0;i<socketlist.length;i++){
        if(socketlist[i].token==token) return socketlist[i];
    }
    return null;
}

function findSocket(socket:any){
    for(var i=0;i<socketlist.length;i++){
        if(socketlist[i].socket==socket) return socketlist[i];
    }
    return null;
}

function findSocketByUID(uid:String){
    var result:SocketModel[] = [];
    for(var i=0;i<socketlist.length;i++){
        if(socketlist[i].user.uid==uid) result.push(socketlist[i]);
    }
    if(result.length>0) return result;
    return null;
}

netserver.on("connection", function(socket: any) {

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

    console.log('--------------------------------------------')
    //var no_of_connections =  server.getConnections(); // sychronous version
    netserver.getConnections(function(error,count){
        console.log('Number of concurrent connections to the server : ' + count);
    });

    socket.setEncoding('utf8');

    socket.setTimeout(80000000,function(){
        // called after timeout -> same as socket.on('timeout')
        // it just tells that soket timed out => its ur job to end or destroy the socket.
        // socket.end() vs socket.destroy() => end allows us to send final data and allows some i/o activity to finish before destroying the socket
        // whereas destroy kills the socket immediately irrespective of whether any i/o operation is goin on or not...force destry takes place
        console.log('Socket timed out');
    });


    socket.on('data',async function(data:any){
        var bread = socket.bytesRead;
        var bwrite = socket.bytesWritten;
        console.log('Bytes read : ' + bread);
        console.log('Bytes written : ' + bwrite);
        console.log('Data sent to server : ' + data);

        var netdata = data.split('::::');

        var user = await FrienqModel.findByToken(netdata[0]);

        if(user==null) socket.destroy();

        if(netdata.length!=3){
            socket.write('Data::::Invalid Protocol');
            //socket.flush();
            return;
        }

        if(netdata[2]=="Hello"){
            //var old = findSocketByToken(netdata[0]);
            var old = findSocket(socket);
            if(old == null) socketlist.push(new SocketModel(netdata[0], socket, user));
            socket.write('Data::::Hello');
            //setTimeout(function(){socket.write('Data::::Out Stream');},5000);
        }

    });

    socket.on('drain',function(){
        console.log('write buffer is empty now .. u can resume the writable stream');
        socket.resume();
    });

    socket.on('error',function(error:any){
        console.log('Error : ' + error);
    });

    socket.on('timeout',function(){
        console.log('Socket timed out !');
        socket.end('Timed out!');
        // can call socket.destroy() here too.
    });

    socket.on('end',function(data:any){
        console.log('Socket ended from other end!');
        console.log('End data : ' + data);
    });

    socket.on('close',function(error:any){
        var bread = socket.bytesRead;
        var bwrite = socket.bytesWritten;
        console.log('Bytes read : ' + bread);
        console.log('Bytes written : ' + bwrite);
        console.log('Socket closed!');
        if(error){
            console.log('Socket was closed coz of transmission error');
        }
    });

    /*setTimeout(function(){
        var isdestroyed = socket.destroyed;
        console.log('Socket destroyed:' + isdestroyed);
        socket.destroy();
    },1200000);*/

});

netserver.on('close',function(){
    console.log('Server closed !');
  });

export default {server : netserver, socketlist : socketlist, findSocketByToken : findSocketByToken, findSocketByUID:findSocketByUID};