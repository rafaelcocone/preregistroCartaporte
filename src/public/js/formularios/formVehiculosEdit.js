
let nombreFormulario = "formualrioVehiculos"


let componentes = [
    {name:"num_eco",                            title:"Número Eco",                         type:"input",           value:vehiculos.num_eco},
    {name:"nameAlias",                          title:"Alias",                              type:"input",           value:vehiculos.nameAlias},
    {name:"matricula",                          title:"Placa",                              type:"input",           value:vehiculos.matricula},
    {name:"serieNumber",                        title:"Número de Serie",                    type:"input",           value:vehiculos.serieNumber},
    {name:"motorNumber",                        title:"Número de Motor",                    type:"input",           value:vehiculos.motorNumber},
    {name:"vehicleYear",                        title:"Año",                                type:"input",           value:vehiculos.vehicleYear},
    {name:"circulationCardNumber",              title:"Número Tarjeta Circulación",         type:"input",           value:vehiculos.circulationCardNumber},
    {name:"circulationCardExpiration",          title:"Expiración Tarjeta Circulación",     type:"input",           value:vehiculos.circulationCardExpiration},
    {name:"numTarjeton",                        title:"Número Tarjeton",                    type:"input",           value:vehiculos.numTarjeton},
    {name:"tarjetonExpiration",                 title:"Expiración Tarjeton",                type:"input",           value:vehiculos.tarjetonExpiration},
    {name:"noAdeudo",                           title:"Pago no Adeudo",                     type:"input",           value:vehiculos.noAdeudo},
    {name:"circulationCardCost",                title:"Costo Tarjeta Circulación",          type:"input",           value:vehiculos.circulationCardCost},
    {name:"vehicleColor",                       title:"Color Vehiculo",                     type:"input",           value:vehiculos.vehicleColor},
    {name:"vehicleBox",                         title:"Caja Seca",                          type:"input",           value:vehiculos.vehicleBox},
    {name:"volumeCapacity",                     title:"Capacidad Volumen (TON)",            type:"input",           value:vehiculos.volumeCapacity},
    {name:"weigthCapacity",                     title:"Capacidad Peso (KG)",                type:"input",           value:vehiculos.weigthCapacity},
    {name:"id_typeModelVehicles",               title:"Tipo Modelo Vehiculo",               type:"input",           value:vehiculos.id_typeModelVehicles},
    {name:"fk_idVehicleType",                   title:"Tipo Vehiculo",                      type:"input",           value:vehiculos.fk_idVehicleType},
    {name:"id_brand",                           title:"Marca Vehiculo",                     type:"input",           value:vehiculos.id_brand},
    {type:"buttonDivForm",                      submitName:"Editar"}
]

const formulario = document.getElementById(nombreFormulario)



componentes.forEach(element => {
 
   formulario.innerHTML += FORM_ELEMENTS[element.type](element) 
})