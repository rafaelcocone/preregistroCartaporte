const FORM_ELEMENTS = {
    "input": ({name, title}, value= "") => {
        const labelDiv = document.createElement("div")
        labelDiv.classList.add("formularioLabel")
        const labelInput = document.createElement("label")
        labelInput.htmlFor = name
        labelInput.innerHTML=title+":"
        labelDiv.appendChild(labelInput)

        const inputRef = document.createElement("input") 
        inputRef.type = "text"
        inputRef.id =  name
        inputRef.name = name
        inputRef.placeholder = title
        inputRef.value = value
    
        const inputDiv = document.createElement("formularioInput")
        inputDiv.appendChild(inputRef)
        const row = document.createElement("div")
        row.classList.add("formularioRow")
        row.appendChild(labelDiv)
        row.appendChild(inputDiv)    
        return row
    },
    "select": ({name, title},data = [],value = "" ) => {
        const labelDiv = document.createElement("div")
        labelDiv.classList.add("formularioLabel")
        const labelInput = document.createElement("label")
        labelInput.htmlFor = name
        labelInput.innerHTML=title+":"
        labelDiv.appendChild(labelInput)
    
        //Create and append select list
        const selectList = document.createElement("select")
        selectList.id = name
    
        let option = document.createElement("option")
        option.value = ""
        option.text = (data.length > 0) ? "Seleccione una opción." : "Sin opciónes disponibles."
        selectList.appendChild(  option)
    
        //Create and append the data
        for (let i = 0; i < data.length; i++) {
            let option = document.createElement("option");
            option.value = data[i];
            option.text = data[i];
            selectList.appendChild(option)
        }
    
        const inputDiv = document.createElement("formularioInput")
        inputDiv.appendChild(selectList)
        const row = document.createElement("div")
        row.classList.add("formularioRow")
        row.appendChild(labelDiv)
        row.appendChild(inputDiv)
        return row    
    },
    "button": (type,title,func = null) => {
        const inputRef = document.createElement("input")
        inputRef.type = type
       // inputRef.id =  title
        inputRef.value = title
        if(func) inputRef.onclick = func
        return inputRef
    },
    "buttonDivForm": () => {
        const divButtons = document.createElement("div")
        divButtons.classList.add("formularioDivButtons")

        divButtons.appendChild(FORM_ELEMENTS.button("submit","Agregar"))
        divButtons.appendChild(FORM_ELEMENTS.button("reset","Limpiar"))

        const row = document.createElement("div")
        row.classList.add("formularioRow")
        row.appendChild(divButtons)
        return row
    }
}

let nombreFormulario = "formualrioMercancias"
let componentes = [
   {name:"mercanciaCantidad",title:"Cantidad", type:"input"},
   {name:"mercanciaClaveUnidad",title:"Unidad",type:"select"},
   {name:"mercanciaClaveProducto",title:"Clave de producto", type:"input"},
   {name:"mercanciaAltura",title:"Altura", type:"input"},
   {name:"mercanciaLongitud",title:"Longitud", type:"input"},
   {name:"mercanciaAncho",title:"Ancho", type:"input"},
   {name:"mercanciaValor",title:"Valor", type:"input"},
   {name:"mercanciaMoneda",title:"Moneda", type:"input"},
   {name:"mercanciaMaterialPeligroso",title:"Material Peligroso", type:"input"},
   {name:"mercanciaEmbalaje",title:"Embalaje", type:"input"},
   {name:"mercanciaSTCC",title:"Clave STCC", type:"input"},
   {name:"mercanciaFracArancelaria",title:"Frac. Arancelaria", type:"input"},
   {type:"buttonDivForm"}
]

const formulario = document.getElementById(nombreFormulario)
componentes.forEach(element => {
   formulario.appendChild( FORM_ELEMENTS[element.type](element) )
})
