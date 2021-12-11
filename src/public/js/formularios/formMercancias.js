
let nombreFormulario = "formualrioMercancias"
let componentes = [
   {name:"cantidad",title:"Cantidad", type:"input", value:"1"},
   {name:"id_claveUnidad",title:"Unidad",type:"select", data:catUnidades , value:"1" },
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
const selectDivision = document.getElementById("division-name")
const selectFamily = document.getElementById("familia-name")
const selectClass = document.getElementById("clase-name")
const selectProduct = document.getElementById("producto-name")

const divisiones = catalogoProducto['1'].divisiones
var familias = {}
var clases = {}


componentes.forEach(element => {
   //formulario.appendChild( FORM_ELEMENTS[element.type](element) )
   formulario.innerHTML +=  FORM_ELEMENTS[element.type](element)
})

var exampleModal = document.getElementById('exampleModal')
exampleModal.addEventListener('show.bs.modal', function (event) {
 
})

const loadProductDivision = () => {
   let options = '<option value = "">Elige una división de Producto</option>'
   for(const division in divisiones){
      options += `<option value = "${division}">${divisiones[division].description}</option>`
   }
   selectDivision.innerHTML = options
}

const loadProductFamily = (division) => {
   let options = '<option value = "">Elige una Familia de productos</option>'
   if(division !== ""){
      familias = divisiones[division].familias
      for(const familia in familias){
         options += `<option value = "${familia}">${familias[familia].description}</option>`
      }
   }
   selectFamily.innerHTML = options
}

const loadProductClass = (family) => {
   let options = '<option value = "">Elige una Clase de productos</option>'
   if(family !== ""){
      clases = familias[family].clases
      for(const clase in  clases){
         options += `<option value = "${clase}">${clases[clase].description}</option>`
      }
   }
   selectClass.innerHTML = options

}

const loadProducts = (_class) => {
   let options = '<option value = "">Elige un producto</option>'
   if(_class !== ""){
      let productos = clases[_class].detallados
      productos.forEach((product) => {
         options += `<option value = "${product.key}">${product.description}</option>`
      })
   }
   selectProduct.innerHTML = options
}

let claveProducto_input = document.getElementById('claveProducto')
const selectedProduct = (_product ) => {
   claveProducto_input.value = _product
}


document.addEventListener('DOMContentLoaded',loadProductDivision)
selectDivision.addEventListener('change', e => loadProductFamily(e.target.value))
selectFamily.addEventListener('change', e => loadProductClass(e.target.value))
selectClass.addEventListener('change', e => loadProducts (e.target.value))
selectProduct.addEventListener('change', e => selectedProduct (e.target.value))




/*
var exampleModal2 = document.getElementById('seleccionProducto')
var modal = bootstrap.Modal.getOrCreateInstance("#exampleModal")

exampleModal2.addEventListener('click', () => {
   modal.hide()
})*/