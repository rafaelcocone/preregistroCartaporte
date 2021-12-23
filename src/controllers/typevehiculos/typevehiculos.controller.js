
import {connect} from '../../database'
import excelJS from 'exceljs'

export const getTypeVehiculos = async (req,res) => {
    const connection  = await connect()
    const [rows] = await connection.query('SELECT * FROM adminCtTypeVehicles WHERE active != 2')
    res.render('typevehiculos/typevehiculos',{typevehiculos:rows})
}

export const addTypeVehiculos = async (req,res) => {
    let status=200
    let sql = `INSERT INTO adminCtTypeVehicles (
                    code,
                    vehicleType
                ) VALUES (?,?)`

console.log(req.body)

    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[
            req.body.code,
            req.body.vehicleType
        ])
    }catch(e){
        status=400
        result = e.message
    }

    res
        .status(status)
        .redirect('/typevehiculos')
}

export const getTypeVehiculosEdit = async (req,res) => {
    let status=200
    let data = []
    try{
        const connection  = await connect()
        const [rows] = await connection.query('SELECT * FROM adminCtTypeVehicles WHERE id = ? LIMIT 1',[req.params.id])
        if(rows.length === 0) throw "Tipo de Vehiculo no localizado."
        data = rows
           
    }catch(e){
        status=400
        //almacenarresult = e.message
        res
            .status(status)
            .redirect('/typevehiculos')
    }
    res
        .status(status)
        .render('typevehiculos/edit',{typevehiculos:data[0]})
}

export const postTypeVehiculosEdit = async (req,res) => {
    let status=200
    const {id} = req.params

    const {
        code,
        vehicleType
    } = req.body

    const updates = {
        code,
        vehicleType
    }
    let sql = `UPDATE adminCtTypeVehicles set ? WHERE id  = ?`
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
        .redirect('/typevehiculos')
}

export const deleteTypeVehiculos = async (req,res) => {
    let status=200
    const {id} = req.params

    let sql = `UPDATE adminCtTypeVehicles SET active = 2 WHERE id = ?`
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
        .redirect('/typevehiculos')
    
    
}

export const excelTypeVehiculos = async (req,res) => {
    let status = 200
    const workbook = new excelJS.Workbook();  // Create a new workbook
    const worksheet = workbook.addWorksheet("My Users"); // New Worksheet
    const path = "./files";  // Path to download excel
    
    res
        .status(status)
        .redirect('/typevehiculos')
}

