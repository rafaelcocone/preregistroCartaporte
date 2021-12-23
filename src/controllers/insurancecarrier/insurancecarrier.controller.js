
import {connect} from '../../database'
import excelJS from 'exceljs'

export const getInsuranceCarrier = async (req,res) => {
    const connection  = await connect()
    const [rows] = await connection.query('SELECT * FROM trafficCtInsuranceCarrier WHERE active != 2')
    res.render('insurancecarrier/insurancecarrier',{insurancecarrier:rows})
}

export const addInsuranceCarrier = async (req,res) => {
    let status=200
    let sql = `INSERT INTO trafficCtInsuranceCarrier (
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
        .redirect('/insurancecarrier')
}

export const getInsuranceCarrierEdit = async (req,res) => {
    let status=200
    let data = []
    try{
        const connection  = await connect()
        const [rows] = await connection.query('SELECT * FROM trafficCtInsuranceCarrier WHERE id = ? LIMIT 1',[req.params.id])
        if(rows.length === 0) throw "Tipo de Seguro no localizado."
        data = rows
           
    }catch(e){
        status=400
        //almacenarresult = e.message
        res
            .status(status)
            .redirect('/insurancecarrier')
    }
    res
        .status(status)
        .render('insurancecarrier/edit',{insurancecarrier:data[0]})
}

export const postInsuranceCarrierEdit = async (req,res) => {
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
    let sql = `UPDATE trafficCtInsuranceCarrier set ? WHERE id  = ?`
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
        .redirect('/insurancecarrier')
}

export const deleteInsuranceCarrier = async (req,res) => {
    let status=200
    const {id} = req.params

    let sql = `UPDATE trafficCtInsuranceCarrier SET active = 2 WHERE id = ?`
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
        .redirect('/insurancecarrier')
    
    
}

export const excelInsuranceCarrier = async (req,res) => {
    let status = 200
    const workbook = new excelJS.Workbook();  // Create a new workbook
    const worksheet = workbook.addWorksheet("My Users"); // New Worksheet
    const path = "./files";  // Path to download excel
    
    res
        .status(status)
        .redirect('/insurancecarrier')
}

