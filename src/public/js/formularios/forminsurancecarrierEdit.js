
let nombreFormulario = "formualrioInsuranceCarrier"
 

let componentes = [
    {name:"code",                            title:"Código",                         type:"input",           value:insurancecarrier.code},
    {name:"description",                     title:"Descripción",                    type:"input",           value:insurancecarrier.description},
    {type:"buttonDivForm",                   submitName:"Editar"}
]

const formulario = document.getElementById(nombreFormulario)



componentes.forEach(element => {
 
   formulario.innerHTML += FORM_ELEMENTS[element.type](element) 
})