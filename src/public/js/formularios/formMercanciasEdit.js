
let nombreFormulario = "formualrioMercancias"


let componentes = [
   {name:"cantidad",title:"Cantidad", type:"input", value:mercancias.cantidad},
   {name:"id_claveUnidad",title:"Unidad",type:"select", data:catUnidades, value:mercancias.id_claveUnidad },
   {name:"claveProducto",title:"Clave de producto", type:"input", value:mercancias.claveProducto},
   {name:"altura",title:"Altura", type:"input",value:mercancias.altura},
   {name:"longitud",title:"Longitud", type:"input",value:mercancias.longitud},
   {name:"ancho",title:"Ancho", type:"input",value: mercancias.ancho},
   {name:"valor",title:"Valor", type:"input", value:mercancias.valor},
   {name:"moneda",title:"Moneda", type:"input", value:mercancias.moneda},
   {name:"materialPeligroso",title:"Material Peligroso", type:"input",value:mercancias.materialPeligroso},
   {name:"embalaje",title:"Embalaje", type:"input",value:mercancias.embalaje},
   {name:"STCC",title:"Clave STCC", type:"input",value:mercancias.STCC},
   {name:"fracArancelaria",title:"Frac. Arancelaria", type:"input",value:mercancias.fracArancelaria},
   {type:"buttonDivForm", submitName:"Editar"}
]

const formulario = document.getElementById(nombreFormulario)

componentes.forEach(element => {
   formulario.innerHTML +=  FORM_ELEMENTS[element.type](element) 
})