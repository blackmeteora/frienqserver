import path from 'path';
import fs from 'fs';
import ResultModel from "../model/resultModel";
import FrienqModel from "../model/frienqModel";
class FrienqController {
    public Index(req:any, res:any):void{
        res.end('Hello From Frienq Api !')
    }

    public async SearchFrienq(req:any, res:any) {
        res.send(await FrienqModel.search(req.body.key))
    }

    public ProfilData(req:any, res:any):void{
        res.send(req.body.user);
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