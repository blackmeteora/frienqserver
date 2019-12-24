import database from "../core/database";

class DefinitionController {
    public async Sex(req:any, res:any) {
        var result = await database.select("select * from frienq_def_sex");
        res.send(result);
    }
}

export default new DefinitionController();