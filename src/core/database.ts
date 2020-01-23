import mariadb from "mariadb";
import config from "../dbconfig.json";

class DB {

    public static Pool:mariadb.Pool;

    public Conn:mariadb.PoolConnection;

    constructor(){
        if(DB.Pool==null) DB.Pool = mariadb.createPool(config);
    }

    public async executeQuery(query:Array<string>, params:Array<Array<any>>=undefined){

        if(this.Conn==null){
            try{
                this.Conn = await DB.Pool.getConnection();
            }catch (ex){
                throw ex;
            }
        }

        try{
            this.Conn.beginTransaction();
            var result = Array<object>(); 
            for(var i=0; i<query.length;i++) result.push(await this.Conn.query(query[i],params[i]));
            this.Conn.commit();
            this.freeConnection();
            return result;
        }catch(ex){
            this.Conn.rollback();
            this.freeConnection();
            throw ex;
        }
    }

    public async select(query:string, params:Array<any>=undefined){

        if(this.Conn==null){
            try{
                this.Conn = await DB.Pool.getConnection();
            }catch (ex){
                throw ex;
            }
        }

        try{
            var result = this.Conn.query(query,params);
            this.freeConnection();
            return result;
        }catch(ex){
            this.freeConnection();
            throw ex;
        }
    }

    public freeConnection():void{
        this.Conn.release();
    }
}

export default new DB();