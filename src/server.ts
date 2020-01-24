import api from "./core/api";
import http from "http";
import netserver from "./socket"


var PORT =  3000;
const SPORT =  3001;

const server = http.createServer(api);

netserver.server.listen(SPORT);

server.listen(PORT, () => {
    console.log('listening on port ' + PORT);
})