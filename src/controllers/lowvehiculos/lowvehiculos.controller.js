
import {connect} from '../../database'
import excelJS from 'exceljs'

export const getLowVehiculos = async (req,res) => {
    const connection  = await connect()
    const [rows] = await connection.query('SELECT * FROM trafficCtLowVehicles WHERE active != 2')
    res.render('lowvehiculos/lowvehiculos',{lowvehiculos:rows})
}

export const addLowVehiculos = async (req,res) => {
    let status=200
    let sql = `INSERT INTO trafficCtLowVehicles (
                    code,
                    description
                ) VALUES (?,?)`

console.log(req.body)

    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[
            req.body.code,
            req.body.description
        ])
    }catch(e){
        status=400
        result = e.message
    }

    res
        .status(status)
        .redirect('/lowvehiculos')
}

export const getLowVehiculosEdit = async (req,res) => {
    let status=200
    let data = []
    try{
        const connection  = await connect()
        const [rows] = await connection.query('SELECT * FROM trafficCtLowVehicles WHERE id = ? LIMIT 1',[req.params.id])
        if(rows.length === 0) throw "Baja de Vehiculo no localizado."
        data = rows
           
    }catch(e){
        status=400
        //almacenarresult = e.message
        res
            .status(status)
            .redirect('/lowvehiculos')
    }
    res
        .status(status)
        .render('lowvehiculos/edit',{lowvehiculos:data[0]})
}

export const postLowVehiculosEdit = async (req,res) => {
    let status=200
    const {id} = req.params

    const {
        code,
        description
    } = req.body

    const updates = {
        code,
        description
    }
    let sql = `UPDATE trafficCtLowVehicles set ? WHERE id  = ?`
    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[updates,id] )

    }catch(e){
        status=400
        result = e.message
    }

    res
        .status(status)
        .redirect('/lowvehiculos')
}

export const deleteLowVehiculos = async (req,res) => {
    let status=200
    const {id} = req.params

    let sql = `UPDATE trafficCtLowVehicles SET active = 2 WHERE id = ?`
    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[id] )

    }catch(e){
        status=400
        //almacenarresult = e.message
    }
    res
        .status(status)
        .redirect('/lowvehiculos')
    
    
}

export const excelLowVehiculos = async (req,res) => {
    let status = 200
    const workbook = new excelJS.Workbook();  // Create a new workbook
    const worksheet = workbook.addWorksheet("My Users"); // New Worksheet
    const path = "./files";  // Path to download excel
    
    res
        .status(status)
        .redirect('/lowvehiculos')
}

