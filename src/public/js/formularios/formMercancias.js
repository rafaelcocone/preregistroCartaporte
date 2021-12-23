
let nombreFormulario = "formualrioMercancias"
let componentes = [
   {name:"cantidad",title:"Cantidad", type:"input", value:"1"},
   {name:"id_claveUnidad",title:"Unidad",type:"select", data:catUnidades , value:"1" },
   {name:"claveProducto",title:"Clave de producto", type:"input"},
   {name:"id_divBusquedaProducto",title:"Busqueda de producto", type:"div"},
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
   formulario.innerHTML +=  FORM_ELEMENTS[element.type](element)
})

let claveProducto_input = document.getElementById('claveProducto')
let divBusquedaProducto = document.getElementById('id_divBusquedaProducto')
divBusquedaProducto.innerHTML = `
   <div class="divBusquedaProducto">
      <span id="busquedaDescripcionProducto" class="m-2"></span>
      <button 
         type="button" 
         class="btn btn-primary m-2" 
         data-bs-toggle="modal" 
         data-bs-target="#busquedaProductoModal" 
         >Busqueda de producto
      </button>
   </div>  
`
let busquedaDescripcionProducto = document.getElementById('busquedaDescripcionProducto')
var busquedaProductoModal = document.getElementById('busquedaProductoModal')
busquedaProductoModal.addEventListener('show.bs.modal', function (event) {
 
})


const loadProductDivision = () => {
   let options = '<option value = "">Elige una división de Producto</option>'
   for(const division in divisiones){
      options += `<option value = "${division}">${divisiones[division].description}</option>`
      
      _division.push({
         id: division,
        text: divisiones[division].description
      })
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


const selectedProduct = (target ) => {
   busquedaDescripcionProducto.innerHTML = ""
   if(target.value !== ""){
      claveProducto_input.value = target.value
      busquedaDescripcionProducto.innerHTML  = target.options[target.selectedIndex].text
   }
    
}

/*
document.addEventListener('DOMContentLoaded',loadProductDivision)

selectDivision.addEventListener('change', e => loadProductFamily(e.target.value))
selectFamily.addEventListener('change', e => loadProductClass(e.target.value))
selectClass.addEventListener('change', e => loadProducts (e.target.value))
selectProduct.addEventListener('change', e => selectedProduct (e.target))
*/



/*
var busquedaProductoModal2 = document.getElementById('seleccionProducto')
var modal = bootstrap.Modal.getOrCreateInstance("#busquedaProductoModal")

busquedaProductoModal2.addEventListener('click', () => {
   modal.hide()
})*/

$(document).ready(function() {
   _division =  []
   for(const division in divisiones){
      _division.push({
         id: division,
        text: divisiones[division].description
      })
   }
   var $ls =$('#division-name') 

   console.log(_division)
   $ls.select2()

   $( "#division-name" ).change(function(e) {
      alert( e.target.options[e.target.selectedIndex].text)
             
      alert($("#division-name option:selected" ).text())
      alert($( this ).val() )
      //loadProductFamily(e.target.value);
    });
/*
    $( "#familia-name" ).change(function(e) {
      loadProductClass(e.target.value);
    });
    $( "#clase-name" ).change(function(e) {
      loadProducts (e.target.value);
    });
    $( "#producto-name" ).change(function(e) {
      selectedProduct (e.target);
    });
*/
});
