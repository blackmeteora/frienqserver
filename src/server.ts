import api from "./core/api";
import io from "socket.io";
import http from "http";


const PORT =  process.env.PORT || 3000;
const server = http.createServer(api);

let socket = require("socket.io")(http);

socket.on("connection", function(socket: any) {
    console.log("a user connected");
});

api.listen(PORT, () => {
    console.log('listening on port ' + PORT);
})