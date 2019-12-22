import mariadb from "mariadb";
import config from "../dbconfig.json";

class DB {

    public Pool:mariadb.Pool;

    constructor(){
        this.Pool = mariadb.createPool(config);  
    }
}

export default new DB().Pool;