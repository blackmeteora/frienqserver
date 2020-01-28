export default class SocketModel{

    constructor(_token:String, _socket:any, _user:any) {
        this.token = _token;
        this.socket = _socket;
        this.user = _user;
    }

    public token : String;
    public socket : any;
    public user : any;
}