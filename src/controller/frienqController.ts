class FrienqController {
    public Index(req:any, res:any):void{
        res.end('Hello From Frienq Api !')
    }
}

export default new FrienqController();