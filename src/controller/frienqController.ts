import path from 'path';
import fs from 'fs';
import ResultModel from "../model/resultModel";
import FrienqModel from "../model/frienqModel";
class FrienqController {
    public Index(req:any, res:any):void{
        res.end('Hello From Frienq Api !')
    }

    public async SearchFrienq(req:any, res:any) {
        var result =  new ResultModel();

        try{
            result.result=true;
            result.data=await FrienqModel.search(req.body.user.uid, req.body.key);
        }
        catch(ex){
            result.result=false;
            result.msg=ex.message;
        }

        res.send(result);
    }

    public async FrienqOp(req:any, res:any) {
        var result =  new ResultModel();

        try{
            result.result=true;
            if(req.body.op==1){
                result.data=await FrienqModel.frienq(req.body.uid_member, req.body.user.uid);
            }else{
                result.data=await FrienqModel.unFrienq(req.body.uid_member, req.body.user.uid);
            }
            result.data = result.data["affectedRows"]==1;
        }
        catch(ex){
            result.result=false;
            result.msg=ex.message;
        }

        res.send(result);
    }

    public async FrienqList(req:any, res:any) {
        var result =  new ResultModel();

        try{
            result.result=true;
            result.data = await FrienqModel.getFrienqList(req.body.user.uid, req.body.uid, req.body.lastusername, req.body.mode);
            for(var i=0; i<result.data.length;i++) delete result.data[0].password;
        }
        catch(ex){
            result.result=false;
            result.msg=ex.message;
        }

        res.send(result);
    }

    public async ProfilData(req:any, res:any) {
        var result =  new ResultModel();

        try{
            result.result=true;
            result.data=await FrienqModel.profilData(req.body.uid, req.body.user.uid);
            delete result.data.password;
        }
        catch(ex){
            result.result=false;
            result.msg=ex.message;
        }

        res.send(result);
    }

    public ProfilePicture(req:any, res:any){
        if(req.headers["QueryString"].u!=null && req.headers["QueryString"].f!=null){
            var file = path.resolve(`./data/user/${req.headers["QueryString"].u}/profilepicture/${req.headers["QueryString"].f}`);
            var image = fs.createReadStream(file);
            image.on('open', function () {
                //res.set('Content-Type', "image/jpeg");
                image.pipe(res);
            });
            image.on('error', function () {
                res.set('Content-Type', 'text/plain');
                res.status(404).end('404 - Not found');
            });
        }
        else{
            var result = new ResultModel();
            var user = req.headers["user"];
            var tempPath = req.file.path;
            var fileExtension = path.extname(req.file.originalname).toLowerCase();
            var uuid = require("uuid/v4");
            var imageName = uuid();
            var targetFile=path.resolve(`./data/user/${user.uid}/profilepicture/${imageName}${fileExtension}`);
            var targetPath=path.resolve(`./data/user/${user.uid}/profilepicture/`);

            if(fileExtension==='.png' || fileExtension==='.jpg' || fileExtension==='.jpeg' || fileExtension==='.gif') {
                if(fs.existsSync(targetPath)) fs.rmdirSync(targetPath, { recursive: true });
                fs.mkdirSync(targetPath, { recursive: true });

                fs.rename(tempPath,targetFile,async function(err){
                    if(err){
                        result.result = false;
                        result.msg = err.message;
                    };

                    var ures = await FrienqModel.updateProfilePicture(user.uid, `${imageName}${fileExtension}`);

                    result.result = true;
                    result.data = `${imageName}${fileExtension}`;
                    res.send(result);
                });
            }
            else{
                fs.unlink(tempPath,function(err){
                    result.result = false;
                    if(err) result.msg = err.message;
                    else result.msg = "Just Image Files Allowed !";
                    res.send(result);
                });
            }
        }
    }
}

export default new FrienqController();