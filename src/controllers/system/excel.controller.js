import {connect} from '../../database'
import excelJS from 'exceljs'

export const setData = async (req,res) => {
    let status = 200
    const workbook = new excelJS.Workbook();  // Create a new workbook
    let filename = './src/libs/1 Cobro por Servicios Brindado.xlsx'
    const connection  = await connect()
    var arreglo = []
    let sql = `INSERT INTO adminCtTariffFraction  (
            code,
            description,
            users_c_id
            
        ) VALUES ? `

    try{
        let result = []

        await workbook.xlsx.readFile(filename)
            .then(function(worksheets, sheetId) {
                // console.log(sheetId)
                // console.log(worksheet)
                var worksheet = workbook.getWorksheet('Catalogos');
                /*worksheet.eachRow({ includeEmpty: true }, function(row, rowNumber) {
                console.log("Row " + rowNumber + " = " + JSON.stringify(row.values));
                if(row.values[1] === null)
                    return
                });*/
                console.log(worksheet.actualRowCount)
            
                for (var i = 1; i <= worksheet.actualRowCount; i++) {
                //for (var j = 1; j <= sheet.actualColumnCount; j++) {
                    let data = worksheet.getRow(i).getCell(27).toString();
                
                    if(data === "") break
                    console.log(data)
                    if(data.includes("-")){
                        let cadena = data.trim()
                        //let arrayDeCadenas = cadena.split("-")
                        let arrayDeCadenas =[
                            cadena.substring(0,10),
                            cadena.substring(12),
                        ]
                        arreglo.push([
                            arrayDeCadenas[0].trim(),
                            arrayDeCadenas[1].trim(),
                            '0'
                        ])
                    }
                    
                
                //}
                
                }       
        });
        console.log(arreglo)
        if(arreglo.length > 0)
            result = await connection.query(sql ,[arreglo])
        
     }catch(e){
      console.log(e)
    }
  res
    .status(status)
    .redirect('/mercancias')

}