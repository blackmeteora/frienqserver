import DB from "../database";

class DefinitionController {
    public async Sex(req:any, res:any) {
        var conn = await DB.getConnection();
        var result = await conn.query("select * from frienq_def_sex");
        res.send(result);
        conn.end();
    }
}

export default new DefinitionController();