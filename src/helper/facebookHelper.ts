import ResultModel from "../model/resultModel"
import FrienqModel from "../model/frienqModel";

export default class FacebookHelper {

    public static async Connect(req:any, res:any){
        
        var resultModel = new ResultModel();
        const https = require('https')
        const options = {
            hostname: 'graph.facebook.com',
            port: 443,
            path: `/v2.12/me?fields=name,first_name,last_name,email,link&access_token=${req.body.frienq_member_application.data_facebook.token}`,
            method: 'GET'
        }
        const _req = https.request(options, async (_res: any) => {
            res.on('data', async (data: any) => {
                if (data.id == req.body.frienq_member_application.data_facebook.id) {
                   
                    var frienq = FrienqModel.findByApplication(data.id,"facebook");
                    
                    if(frienq===undefined){

                        req.body.name=data.first_name;
                        req.body.surname=data.last_name;
                        req.body.email=data.email;
                        //this.username = req.body.username;
                        //this.id_sex = req.body.id_sex;
                        //this.date_birth = req.body.date_birth;

                        var newFrienq = new FrienqModel();
                        newFrienq.FillFromRequest(req);
                        var cretedFrienq = newFrienq.Create();
                        if(cretedFrienq == undefined){
                            resultModel.result = false;
                            resultModel.msg = "Facebook Login Error - Uncaught";
                            res.end(resultModel);
                            return;
                        }
                        
                    }

                    resultModel.result = true;
                    resultModel.data = await FrienqModel.getApplicationLoginToken(data.id, "facebook");
                    if (resultModel.data == null) throw new Error("Unauthorized Login !");

                } else {
                    resultModel.result = false;
                    resultModel.msg = "Facebook Login Error - Invalid Token";
                    res.end(resultModel);
                }
            });
        });
        _req.on('error', (error: any) => {
            resultModel.result = false;
            resultModel.msg = "Facebook Login Error - " + error.toString();
            res.end(resultModel);
        })
        
        _req.end();

    }

}