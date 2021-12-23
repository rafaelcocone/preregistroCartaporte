
let nombreFormulario = "formualrioTypeVehiculos"
 

let componentes = [
    {name:"code",                            title:"Código",                           type:"input",           value:typevehiculos.code},
    {name:"vehicleType",                     title:"Tipo Vehiculo",                    type:"input",           value:typevehiculos.vehicleType},
    {type:"buttonDivForm",                   submitName:"Editar"}
]

const formulario = document.getElementById(nombreFormulario)



componentes.forEach(element => {
 
   formulario.innerHTML += FORM_ELEMENTS[element.type](element) 
})