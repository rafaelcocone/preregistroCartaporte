import mysql from 'mysql2/promise'
import { configMYSQL } from "./config";

export const connect = async () => {
     return await mysql.createConnection(configMYSQL)
}
/*

export const createWithID = async (sql, data) => {
     let relationID = {}
     try{
          const connection  = await connect()
          data.forEach(async (element) => {
               result = await connection.query(sql ,element)
               relationID[element.id]= {
                         'id':result.insertId,
                         'lastID':element.id
                    }
          })
     }catch(e){
          relationID.error = e
     }
     return relationID 
}

export const relationID = async (table = [], relation_ID = {}, column = "") => {
     let newTable = table
     try{
          if(!newTable.isArray)
               throw "La información a insertar, debe ser un arreglo."
          if(! relation_ID instanceof Object )
               throw "La información a relacionar, debe ser un objeto."
          if(relation_ID.length === 0)
               throw "No hay datos a relacionar."
          if(typeof column !== 'string' || column === "")
               throw "La columna a relacionar (string) no fue agregada."
          
          newTable.forEach(element => {
               element[column] = relation_ID[element[column]].id
          })
     }catch(e){
          newTable = {}
          newTable.error = e
     }

     return newTable
}*/