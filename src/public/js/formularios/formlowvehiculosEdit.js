
let nombreFormulario = "formualrioLowVehiculos"
 

let componentes = [
    {name:"code",                            title:"Código",                         type:"input",           value:lowvehiculos.code},
    {name:"description",                     title:"Descripción",                    type:"input",           value:lowvehiculos.description},
    {type:"buttonDivForm",                   submitName:"Editar"}
]

const formulario = document.getElementById(nombreFormulario)



componentes.forEach(element => {
 
   formulario.innerHTML += FORM_ELEMENTS[element.type](element) 
})