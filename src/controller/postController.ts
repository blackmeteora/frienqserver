import ResultModel from "../model/resultModel";
import PostItemModel from "../model/postItemModel";
import path from 'path';
import fs from 'fs';
import PostModel from "../model/postModel";
import FrienqNotificationModel from "../model/frienqNotificationModel";
class PostController{
    public async Create(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result = true;
            var user = req.headers["user"];
            var uuid = require("uuid/v4");
            
            var post:PostModel=new PostModel();
            post.id = uuid();
            post.uid_member = user.uid;
            post.id_type = req.body.id_type;
            post.id_def_security_level = req.body.id_def_security_level;
            post.lat = req.body.lat;
            post.lan = req.body.lan;
            post.location = req.body.location;
            post.explanation = req.body.explanation;
            post.items = new Array<PostItemModel>();
            
            for(var i=0;req.files!=null && i<req.files.length;i++){
                
                var tempPath = req.files[i].path;
                var fileExtension = path.extname(req.files[i].originalname).toLowerCase();
                var imageName = uuid();
                var targetFile=path.resolve(`./data/user/${user.uid}/post/${post.id}/${imageName}${fileExtension}`);
                var targetPath=path.resolve(`./data/user/${user.uid}/post/${post.id}/`);

                if(fileExtension==='.png' || fileExtension==='.jpg' || fileExtension==='.jpeg' || fileExtension==='.gif' || fileExtension==='.mp4' || fileExtension==='.mov') {
                    
                    if(fs.existsSync(targetPath)) fs.rmdirSync(targetPath, { recursive: true });
                    
                    fs.mkdirSync(targetPath, { recursive: true });
                    
                    fs.rename(tempPath,targetFile,async function(err){
                        if(err){
                            resultModel.result = false;
                            resultModel.msg = err.message;
                            res.send(resultModel);
                        };
                    });

                    var postItem:PostItemModel = new PostItemModel();
                    postItem.id=uuid();
                    postItem.id_post=post.id;
                    postItem.id_type=0;
                    postItem.link=`${imageName}${fileExtension}`;
                    postItem.rate=0;
                    postItem.count_rate=0;
                    postItem.deleted=false;
                    postItem.date_create = new Date();
                    postItem.date_update = new Date();
                    postItem.date_delete = new Date();
                    post.items.push(postItem);
                }
                else{
                    fs.unlink(tempPath,function(err){
                        resultModel.result = false;
                        if(err) resultModel.msg = err.message;
                        else resultModel.msg = "Just Image Files Allowed !";
                        res.send(resultModel);
                    });
                }
            }

            if(req.body.items!=null && req.body.items.length>0){
                for(var i=0;i<req.body.items.length;i++){

                    var postItem:PostItemModel = new PostItemModel();
                    postItem.id=uuid();
                    postItem.id_post=post.id;
                    postItem.id_type=0;
                    postItem.link=`${imageName}${fileExtension}`;
                    postItem.rate=0;
                    postItem.count_rate=0;
                    postItem.deleted=false;
                    postItem.explanation=req.body.items[i].explanation;
                    postItem.order_no=req.body.items[i].order_no;
                    postItem.date_create = new Date();
                    postItem.date_update = new Date();
                    postItem.date_delete = new Date();
                    post.items.push(postItem);

                }
            }
            
            if(resultModel.result==true){
                resultModel.data = await post.Save();
                res.send(resultModel);
            }else{
                resultModel.msg = "Unknown Error At Sending Post !";
                res.send(resultModel);
            }
        }
        catch(ex){
            resultModel.result = false;
            resultModel.msg = ex.message;
            res.send(resultModel);
        }
    }

    public async Media(req:any, res:any){
        if(req.headers["QueryString"].u!=null && req.headers["QueryString"].p!=null && req.headers["QueryString"].f!=null){
            var file = path.resolve(`./data/user/${req.headers["QueryString"].u}/post/${req.headers["QueryString"].p}/${req.headers["QueryString"].f}`);
            var image = fs.createReadStream(file);
            image.on('open', function () {
                //res.set('Content-Type', "image/jpeg");
                image.pipe(res);
            });
            image.on('error', function () {
                res.set('Content-Type', 'text/plain');
                res.status(404).end('404 - Not found');
            });
        }else{
            res.set('Content-Type', 'text/plain');
            res.status(404).end('404 - Not found');
        }
    }

    public async Feed(req:any, res:any){
        var resultModel =  new ResultModel();
        
        var user = req.body.user;
        var lastPost = req.body.lastPost;

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.GetFeed(user,req.body.uid_member, "");
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async GetPost(req:any, res:any){
        var resultModel =  new ResultModel();
        
        var user = req.body.user;
        var lastPost = req.body.lastPost;

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.GetPost(user,req.body.id_post);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async RatePost(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.RatePost(req.body.user.uid,req.body.uid_member,req.body.id_post,req.body.rate);
            FrienqNotificationModel.sendNotifications(req.body.uid_member);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async RateList(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.RateList(req.body.id_post);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async DeletePost(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result = true;
            resultModel.data = await PostModel.DeletePost(req.body.user, req.body.id_post);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async AddComment(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result = true;
            resultModel.data = await PostModel.AddComment(req.body.user, req.body.uid_member, req.body.id_post, req.body.comment);
            FrienqNotificationModel.sendNotifications(req.body.uid_member);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async UpdateComment(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result = true;
            resultModel.data = await PostModel.UpdateComment(req.body.user, req.body.id_comment, req.body.comment);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async DeleteComment(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result = true;
            resultModel.data = await PostModel.DeleteComment(req.body.user, req.body.id_comment);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async CommentList(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.GetCommentList(req.body.id_post);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async CommentHistoryList(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.GetCommentHistoryList(req.body.id_comment);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }
}

export default new PostController();