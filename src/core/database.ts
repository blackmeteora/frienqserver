import mariadb from "mariadb";
import config from "../dbconfig.json";

class DB {

    public static Pool:mariadb.Pool;

    constructor(){
        if(DB.Pool==null) DB.Pool = mariadb.createPool(config);
    }

    public async executeQuery(query:Array<string>, params:Array<Array<any>>=undefined){

        var Conn = await DB.Pool.getConnection();

        try{
            Conn.beginTransaction();
            var result = Array<object>(); 
            for(var i=0; i<query.length;i++) result.push(await Conn.query(query[i],params[i]));
            Conn.commit();
            Conn.release();
            return result;
        }catch(ex){
            Conn.rollback();
            Conn.release();
            throw ex;
        }
    }

    public async select(query:string, params:Array<any>=undefined){

        var Conn = await DB.Pool.getConnection();

        try{
            var result = Conn.query(query,params);
            Conn.release();
            return result;
        }catch(ex){
            Conn.release();
            throw ex;
        }
    }
}

export default new DB();