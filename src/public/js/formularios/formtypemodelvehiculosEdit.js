
let nombreFormulario = "formualrioTypeModelVehiculos"


let componentes = [
    {name:"code",                            title:"Código",                         type:"input",           value:typemodelvehiculos.code},
    {name:"description",                     title:"Descripción",                    type:"input",           value:typemodelvehiculos.description},
    {name:"id_vehicleType",                  title:"Número Tipo Vehiculo",           type:"input",           value:typemodelvehiculos.id_vehicleType},
    {type:"buttonDivForm",                   submitName:"Editar"}
]

const formulario = document.getElementById(nombreFormulario)



componentes.forEach(element => {
 
   formulario.innerHTML += FORM_ELEMENTS[element.type](element) 
})