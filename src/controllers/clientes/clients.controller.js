import {connect} from '../../database'
import excelJS from 'exceljs'


export const getClients = async (req,res) => {
    const connection  = await connect()
    let sql = `SELECT  
            persona.id ,
            IFNULL(persona.businessName, CONCAT (  persona.name,' ', persona.lastname1,  '', persona.lastname2 ) ) AS 'NOMBRE',
            persona.name,
            persona.lastname1,
            persona.lastname2,
            persona.telephone,
            persona.mobil,
            persona.email,
            persona.rfc,
            persona.businessName,
            cliente.businessGUID,
            address.id_location ,
            address.postalCode ,
            address.suburb,
            address.street,
            address.numberOutter,
            address.numberInner,
            persona.id_address,
            persona.created_at as 'created_persona',
            cliente.created_at as 'created_cliente'

        FROM clientsCtClients as cliente
        INNER JOIN adminCtPersons as persona ON persona.id = cliente.id_person AND cliente.active != '2'
        LEFT  JOIN adminCtAddress as address ON address.id = persona.id_address AND address.active = '1'
        WHERE persona.active = '1' 
        ORDER BY NOMBRE DESC `

    const [rows] = await connection.query(sql)

    res.render('clientes/clientes',{clientes:rows})
}