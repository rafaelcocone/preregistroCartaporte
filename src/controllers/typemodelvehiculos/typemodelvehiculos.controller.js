
import {connect} from '../../database'
import excelJS from 'exceljs'

export const getTypeModelVehiculos = async (req,res) => {
    const connection  = await connect()
    const [rows] = await connection.query('SELECT * FROM adminCtTypeModelVehicles WHERE active != 2')
    res.render('typemodelvehiculos/typemodelvehiculos',{typemodelvehiculos:rows})
}

export const addTypeModelVehiculos = async (req,res) => {
    let status=200
    let sql = `INSERT INTO adminCtTypeModelVehicles (
                    code,
                    description,
                    id_vehicleType
                ) VALUES (?,?,?)`

console.log(req.body)

    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[
            req.body.code,
            req.body.description,
            req.body.id_vehicleType
        ])
    }catch(e){
        status=400
        result = e.message
    }

    res
        .status(status)
        .redirect('/typemodelvehiculos')
}

export const getTypeModelVehiculosEdit = async (req,res) => {
    let status=200
    let data = []
    try{
        const connection  = await connect()
        const [rows] = await connection.query('SELECT * FROM adminCtTypeModelVehicles WHERE id = ? LIMIT 1',[req.params.id])
        if(rows.length === 0) throw "Tipo de Modelo de Vehiculo no localizado."
        data = rows
           
    }catch(e){
        status=400
        //almacenarresult = e.message
        res
            .status(status)
            .redirect('/typemodelvehiculos')
    }
    res
        .status(status)
        .render('typemodelvehiculos/edit',{typemodelvehiculos:data[0]})
}

export const postTypeModelVehiculosEdit = async (req,res) => {
    let status=200
    const {id} = req.params

    const {
        code,
        description,
        id_vehicleType
    } = req.body

    const updates = {
        code,
        description,
        id_vehicleType
    }
    let sql = `UPDATE adminCtTypeModelVehicles set ? WHERE id  = ?`
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
        .redirect('/typemodelvehiculos')
}

export const deleteTypeModelVehiculos = async (req,res) => {
    let status=200
    const {id} = req.params

    let sql = `UPDATE adminCtTypeModelVehicles SET active = 2 WHERE id = ?`
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
        .redirect('/typemodelvehiculos')
    
    
}

export const excelTypeModelVehiculos = async (req,res) => {
    let status = 200
    const workbook = new excelJS.Workbook();  // Create a new workbook
    const worksheet = workbook.addWorksheet("My Users"); // New Worksheet
    const path = "./files";  // Path to download excel
    
    res
        .status(status)
        .redirect('/typemodelvehiculos')
}

