
let nombreFormulario = "formualrioTypeModelVehiculos"
let componentes = [
    {name:"code",                          title:"Código",                    type:"input"},
    {name:"description",                   title:"Descripción",               type:"input"},
    {name:"id_vehicleType",                title:"Número Tipo Vehiculo",      type:"input"},
    {type:"buttonDivForm",                 submitName: "Agregar"}        

]

const formulario = document.getElementById(nombreFormulario)

componentes.forEach(element => {
   formulario.innerHTML +=  FORM_ELEMENTS[element.type](element)
});