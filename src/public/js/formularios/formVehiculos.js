
let nombreFormulario = "formualrioVehiculos"
let componentes = [
    {name:"num_eco",                     title:"Número Eco",                    type:"input"},
    {name:"nameAlias",                   title:"Alias",                         type:"input"},
    {name:"matricula",                   title:"Placa",                         type:"input"},
    {name:"serieNumber",                 title:"Número de Serie",               type:"input"},
    {name:"motorNumber",                 title:"Número de Motor",               type:"input"},
    {name:"vehicleYear",                 title:"Año",                           type:"input"},
    {name:"circulationCardNumber",       title:"Número Tarjeta de Circulación", type:"input"},
    {name:"circulationCardExpiration",   title:"Expiración Tarjeta Circulación",type:"input"},
    {name:"numTarjeton",                 title:"Número Tarjeton",               type:"input"},
    {name:"tarjetonExpiration",          title:"Expiración Tarjeton",           type:"input"},
    {name:"noAdeudo",                    title:"Pago no Adeudo",                type:"input"},
    {name:"circulationCardCost",         title:"Costo Tarjeta Circulación",     type:"input"},
    {name:"vehicleColor",                title:"Color Vehiculo",                type:"input"},
    {name:"vehicleBox",                  title:"Caja Seca",                     type:"input"},
    {name:"volumeCapacity",              title:"Capacidad Volúmen (TON)",       type:"input"},
    {name:"weigthCapacity",              title:"Capacidad de Peso (KG)",        type:"input"},
    {name:"id_typeModelVehicles",        title:"Modelo del Vehiculo",           type:"input"},
    {name:"fk_idVehicleType",            title:"Tipo de Vehiculo",              type:"input"},
    {name:"id_brand",                    title:"Marca",                         type:"input"},
    {type:"buttonDivForm",               submitName: "Agregar"}        

]

const formulario = document.getElementById(nombreFormulario)

componentes.forEach(element => {
   formulario.innerHTML +=  FORM_ELEMENTS[element.type](element)
});