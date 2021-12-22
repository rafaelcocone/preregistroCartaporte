
import {connect} from '../../database'
import excelJS from 'exceljs'

export const getVehiculos = async (req,res) => {
    const connection  = await connect()
    const [rows] = await connection.query('SELECT * FROM trafficCtVehicle WHERE active != 2')
    res.render('vehiculos/vehiculos',{vehiculos:rows})
}

export const addVehiculos = async (req,res) => {
    let status=200
    let sql = `INSERT INTO trafficCtVehicle (
                    num_eco,
                    nameAlias,
                    matricula,
                    serieNumber,
                    motorNumber,
                    vehicleYear,
                    circulationCardNumber,
                    circulationCardExpiration,
                    numTarjeton,
                    tarjetonExpiration,
                    noAdeudo,
                    circulationCardCost,
                    vehicleColor,
                    vehicleBox,
                    volumeCapacity,
                    weigthCapacity,
                    id_typeModelVehicles,
                    fk_idVehicleType,
                    id_brand
                ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`

console.log(req.body)

    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[
            req.body.num_eco,
            req.body.nameAlias,
            req.body.matricula,
            req.body.serieNumber,
            req.body.motorNumber,
            req.body.vehicleYear,
            req.body.circulationCardNumber,
            req.body.circulationCardExpiration,
            req.body.numTarjeton,
            req.body.tarjetonExpiration,
            req.body.noAdeudo,
            req.body.circulationCardCost,
            req.body.vehicleColor,
            req.body.vehicleBox,
            req.body.volumeCapacity,
            req.body.weigthCapacity,
            req.body.id_typeModelVehicles,
            req.body.fk_idVehicleType,
            req.body.id_brand,
        ])
    }catch(e){
        status=400
        result = e.message
    }

    res
        .status(status)
        .redirect('/vehiculos')
}

export const getVehiculosEdit = async (req,res) => {
    let status=200
    let data = []
    try{
        const connection  = await connect()
        const [rows] = await connection.query('SELECT * FROM trafficCtVehicle WHERE id = ? LIMIT 1',[req.params.id])
        if(rows.length === 0) throw "Vehiculo no localizado."
        data = rows
           
    }catch(e){
        status=400
        //almacenarresult = e.message
        res
            .status(status)
            .redirect('/vehiculos')
    }
    res
        .status(status)
        .render('vehiculos/edit',{vehiculos:data[0]})
}

export const postVehiculosEdit = async (req,res) => {
    let status=200
    const {id} = req.params

    const {
        num_eco,
        nameAlias,
        matricula,
        serieNumber,
        motorNumber,
        vehicleYear,
        circulationCardNumber,
        circulationCardExpiration,
        numTarjeton,
        tarjetonExpiration,
        noAdeudo,
        circulationCardCost,
        vehicleColor,
        vehicleBox,
        volumeCapacity,
        weigthCapacity,
        id_typeModelVehicles,
        fk_idVehicleType,
        id_brand
    } = req.body

    const updates = {
        num_eco,
        nameAlias,
        matricula,
        serieNumber,
        motorNumber,
        vehicleYear,
        circulationCardNumber,
        circulationCardExpiration,
        numTarjeton,
        tarjetonExpiration,
        noAdeudo,
        circulationCardCost,
        vehicleColor,
        vehicleBox,
        volumeCapacity,
        weigthCapacity,
        id_typeModelVehicles,
        fk_idVehicleType,
        id_brand
    }
    let sql = `UPDATE trafficCtVehicle set ? WHERE id  = ?`
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
        .redirect('/vehiculos')
}

export const deleteVehiculos = async (req,res) => {
    let status=200
    const {id} = req.params

    let sql = `UPDATE trafficctvehicle SET active = 2 WHERE id = ?`
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
        .redirect('/vehiculos')
    
    
}

export const excelVehiculos = async (req,res) => {
    let status = 200
    const workbook = new excelJS.Workbook();  // Create a new workbook
    const worksheet = workbook.addWorksheet("My Users"); // New Worksheet
    const path = "./files";  // Path to download excel
    
    res
        .status(status)
        .redirect('/vehiculos')
}

