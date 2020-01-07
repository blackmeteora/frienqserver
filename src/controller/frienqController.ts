class FrienqController {
    public Index(req:any, res:any):void{
        res.end('Hello From Frienq Api !')
    }

    public ProfilData(req:any, res:any):void{
        res.send(req.body.user);
    }
}

export default new FrienqController();