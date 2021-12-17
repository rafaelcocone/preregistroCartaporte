import {connect} from '../../database'
import excelJS from 'exceljs'


export const getClients = async (req,res) => {
    const connection  = await connect()
   
    res.render('clientes/clientes',{clientes:[]})
}