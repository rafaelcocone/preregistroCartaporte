const excelJS = require("exceljs");
const {connect} = require('./database')

const excel= async ()  => {
  const workbook = new excelJS.Workbook();  // Create a new workbook
  let filename = './src/libs/1 Cobro por Servicios Brindado.xlsx'
  const connection  = await connect()
  let data = []
  let sql = `INSERT INTO cartaPorteTrMercancias (
    code,
    description,
    users_c_id
    
) VALUES ?`

   workbook.xlsx.readFile(filename)
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
      
      try{
        let result = []
        for (var i = 1; i <= worksheet.actualRowCount; i++) {
          //for (var j = 1; j <= sheet.actualColumnCount; j++) {
            let data = worksheet.getRow(i).getCell(1).toString();
          
            if(data === "") break
            console.log(data)
            let arrayDeCadenas = data.split("-")
            data.push([
              arrayDeCadenas[0].trim(),
              arrayDeCadenas[1].trim(),
              0
            ])
          
          //}
          if(data.length > 0)
          console.log(data)
          //result = await connection.query(sql ,data)
        }
      }catch(e){
      console.log(e)
    }
          
  });






}


  excel()