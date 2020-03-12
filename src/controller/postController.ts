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
            post.frienq_members = new Array<String>();

            if(post.id_def_security_level==2 && req.body.frienq_members!=undefined){
                //for(var i = 0; i< req.body.frienq_members.length; i++) 
                post.frienq_members.push(req.body.frienq_members);
            }

            var targetPath=path.resolve(`./data/user/${user.uid}/post/${post.id}/`);
            if(fs.existsSync(targetPath)) fs.rmdirSync(targetPath, { recursive: true });
            
            for(var i=0;req.files!=null && i<req.files.length;i++){
                
                var tempPath = req.files[i].path;
                var fileExtension = path.extname(req.files[i].originalname).toLowerCase();
                var imageName = uuid();
                var targetFile=path.resolve(`./data/user/${user.uid}/post/${post.id}/${imageName}${fileExtension}`);
                
                if(fileExtension==='.png' || fileExtension==='.jpg' || fileExtension==='.jpeg' || fileExtension==='.gif' || fileExtension==='.mp4' || fileExtension==='.mov') {           
                    
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
                    postItem.link='';
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
            var stat = fs.statSync(file);
            var total = stat.size;
            image.on('open', function () {
                var mime = require('mime-types');

                res.set('Content-Length', total);
                res.set('Content-Type', mime.lookup(req.headers["QueryString"].f));
                
                fs.createReadStream(file).pipe(res);
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
        if(lastPost==undefined || lastPost==null) lastPost="";

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.GetFeed(user,req.body.uid_member, lastPost, req.body.mode);
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

    public async VotePost(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.VotePost(req.body.user,req.body.uid_member,req.body.id_post,req.body.id_post_item);
            if(resultModel.data) resultModel.data = await PostModel.GetPost(req.body.user,req.body.id_post);
            else throw new Error("Error when trying to vote post !");
            if(resultModel.data==undefined) throw new Error("Error when trying to vote post !");
            FrienqNotificationModel.sendNotifications(req.body.uid_member);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }

    public async VoteList(req:any, res:any){
        var resultModel =  new ResultModel();

        try{
            resultModel.result=true;
            resultModel.data = await PostModel.VoteList(req.body.user, req.body.id_post, req.body.id_post_item);
        }
        catch(ex){
            resultModel.result=false;
            resultModel.msg=ex.message;
        }

        res.send(resultModel);
    }
}

export default new PostController();