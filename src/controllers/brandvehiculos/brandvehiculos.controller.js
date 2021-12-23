
import {connect} from '../../database'
import excelJS from 'exceljs'

export const getBrandVehiculos = async (req,res) => {
    const connection  = await connect()
    const [rows] = await connection.query('SELECT * FROM adminCtBrand WHERE active != 2')
    res.render('brandvehiculos/brandvehiculos',{brandvehiculos:rows})
}

export const addBrandVehiculos = async (req,res) => {
    let status=200
    let sql = `INSERT INTO adminCtBrand (
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
        .redirect('/brandvehiculos')
}

export const getBrandVehiculosEdit = async (req,res) => {
    let status=200
    let data = []
    try{
        const connection  = await connect()
        const [rows] = await connection.query('SELECT * FROM adminCtBrand WHERE id = ? LIMIT 1',[req.params.id])
        if(rows.length === 0) throw "Tipo de Marca de Vehiculo no localizado."
        data = rows
           
    }catch(e){
        status=400
        //almacenarresult = e.message
        res
            .status(status)
            .redirect('/brandvehiculos')
    }
    res
        .status(status)
        .render('brandvehiculos/edit',{brandvehiculos:data[0]})
}

export const postBrandVehiculosEdit = async (req,res) => {
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
    let sql = `UPDATE adminCtBrand set ? WHERE id  = ?`
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
        .redirect('/brandvehiculos')
}

export const deleteBrandVehiculos = async (req,res) => {
    let status=200
    const {id} = req.params

    let sql = `UPDATE adminCtBrand SET active = 2 WHERE id = ?`
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
        .redirect('/brandvehiculos')
    
    
}

export const excelBrandVehiculos = async (req,res) => {
    let status = 200
    const workbook = new excelJS.Workbook();  // Create a new workbook
    const worksheet = workbook.addWorksheet("My Users"); // New Worksheet
    const path = "./files";  // Path to download excel
    
    res
        .status(status)
        .redirect('/brandvehiculos')
}

