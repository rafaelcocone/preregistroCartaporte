import mysql from 'mysql2/promise'
import { configMYSQL } from "./config";

export const connect = async () => {
     return await mysql.createConnection(configMYSQL)
}
