import database from "../core/database";
import ResultModel from "../model/resultModel";

class DefinitionController {
    public async Sex(req:any, res:any) {
        
        var resultModel =  new ResultModel();

        try{
            resultModel.data = await database.select("select * from frienq_def_sex");
            resultModel.result = true;
        }
        catch(ex){
            resultModel.result = false;
            resultModel.data = null;
            resultModel.msg = ex;
        }
        
        res.send(resultModel);
    }
}

export default new DefinitionController();