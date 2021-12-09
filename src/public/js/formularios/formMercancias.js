let nombreFormulario = "formualrioMercancias"
let componentes = [
   {name:"cantidad",title:"Cantidad", type:"input", value:"1"},
   {name:"id_claveUnidad",title:"Unidad",type:"select", data:catUnidades, value:"1" },
   {name:"claveProducto",title:"Clave de producto", type:"input"},
   {name:"altura",title:"Altura", type:"input"},
   {name:"longitud",title:"Longitud", type:"input"},
   {name:"ancho",title:"Ancho", type:"input"},
   {name:"valor",title:"Valor", type:"input", value:"1.00"},
   {name:"moneda",title:"Moneda", type:"input", value:"MXN"},
   {name:"materialPeligroso",title:"Material Peligroso", type:"input"},
   {name:"embalaje",title:"Embalaje", type:"input"},
   {name:"STCC",title:"Clave STCC", type:"input"},
   {name:"fracArancelaria",title:"Frac. Arancelaria", type:"input"},
   {type:"buttonDivForm",submitName: "Agregar"}
]

const formulario = document.getElementById(nombreFormulario)

componentes.forEach(element => {
   formulario.appendChild( FORM_ELEMENTS[element.type](element) )
})