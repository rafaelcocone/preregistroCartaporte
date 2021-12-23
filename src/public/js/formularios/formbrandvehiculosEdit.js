
let nombreFormulario = "formualrioBrandVehiculos"
 

let componentes = [
    {name:"code",                            title:"Código",                         type:"input",           value:brandvehiculos.code},
    {name:"description",                     title:"Descripción",                    type:"input",           value:brandvehiculos.description},
    {type:"buttonDivForm",                   submitName:"Editar"}
]

const formulario = document.getElementById(nombreFormulario)



componentes.forEach(element => {
 
   formulario.innerHTML += FORM_ELEMENTS[element.type](element) 
})