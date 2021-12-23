
let nombreFormulario = "formualrioTypeVehiculos"
let componentes = [
    {name:"code",                          title:"Código",                      type:"input"},
    {name:"vehicleType",                   title:"Tipo Vehiculo",               type:"input"},
    {type:"buttonDivForm",                 submitName: "Agregar"}        

]

const formulario = document.getElementById(nombreFormulario)

componentes.forEach(element => {
   formulario.innerHTML +=  FORM_ELEMENTS[element.type](element)
}); 