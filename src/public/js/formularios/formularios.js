let catUnidades = [
    {
        "id": 1,
        "key": "H87",
        "description": "Pieza"
    },
    {
        "id": 2,
        "key": "EA",
        "description": "Elemento"
    },
    {
        "id": 3,
        "key": "E48",
        "description": "Unidad de Servicio"
    },
    {
        "id": 4,
        "key": "ACT",
        "description": "Actividad"
    },
    {
        "id": 5,
        "key": "KGM",
        "description": "Kilogramo"
    },

    {
        "id": 7,
        "key": "E51",
        "description": "Trabajo"
    },

    {
        "id": 9,
        "key": "A9",
        "description": "Tarifa"
    },
    {
        "id": 10,
        "key": "MTR",
        "description": "Metro"
    },
    {
        "id": 12,
        "key": "AB",
        "description": "Paquete a granel"
    },
    {
        "id": 13,
        "key": "BB",
        "description": "Caja base"
    },
    {
        "id": 14,
        "key": "KT",
        "description": "Kit"
    },
    {
        "id": 15,
        "key": "SET",
        "description": "Conjunto"
    },
    {
        "id": 16,
        "key": "LTR",
        "description": "Litro"
    },
    {
        "id": 17,
        "key": "XBX",
        "description": "Caja"
    },
    {
        "id": 18,
        "key": "MON",
        "description": "Mes"
    },
    {
        "id": 19,
        "key": "HUR",
        "description": "Hora"
    },
    {
        "id": 20,
        "key": "MTK",
        "description": "Metro cuadrado"
    },
    {
        "id": 21,
        "key": "11",
        "description": "Equipos"
    },
    {
        "id": 22,
        "key": "MGM",
        "description": "Miligramo"
    },
    {
        "id": 23,
        "key": "XPK",
        "description": "Paquete"
    },
    {
        "id": 24,
        "key": "XKI",
        "description": "Kit (Conjunto de piezas)"
    },
    {
        "id": 25,
        "key": "AS",
        "description": "Variedad"
    },
    {
        "id": 26,
        "key": "GRM",
        "description": "Gramo"
    },
    {
        "id": 11,
        "key": "PR",
        "description": "Par"
    },
     {
        "id": 6,
        "key": "DPC",
        "description": "Docenas de piezas"
    },
    {
        "id": 27,
        "key": "xun",
        "description": "Unidad"
    },
    {
        "id": 28,
        "key": "DAY",
        "description": "Día"
    },
     {
        "id": 29,
        "key": "XLT",
        "description": "Lote"
    },
    {
        "id": 30,
        "key": "10",
        "description": "Grupos"
    },
    {
        "id": 31,
        "key": "MLT",
        "description": "Mililitro"
    },
     {
        "id": 32,
        "key": "E54",
        "description": "Viaje"
    }
]


const FORM_ELEMENTS = {
    "input": ({name, title,  value= ""}) => {
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
    
        const inputDiv = document.createElement("div")
        inputDiv.classList.add("formularioInput")
        inputDiv.appendChild(inputRef)
        const row = document.createElement("div")
        row.classList.add("formularioRow")
        row.appendChild(labelDiv)
        row.appendChild(inputDiv)    

        return row
    },
    "select": ({name, title,data = [] ,value = ""} ) => {
        const labelDiv = document.createElement("div")
        labelDiv.classList.add("formularioLabel")
        const labelInput = document.createElement("label")
        labelInput.htmlFor = name
        labelInput.innerHTML=title+":"
        labelDiv.appendChild(labelInput)
    
        //Create and append select list
        const selectList = document.createElement("select")
        selectList.id = name
        selectList.name = name
    
        let option = document.createElement("option")
        option.value = ""
        option.text = (data.length > 0) ? "Seleccione una opción." : "Sin opciónes disponibles."
        selectList.appendChild(  option)
    
        //Create and append the data
        for (let i = 0; i < data.length; i++) {
            let option = document.createElement("option")
            option.value = (data[i].id) ? data[i].id : data[i].key
            option.text = data[i].description
            selectList.appendChild(option)
        }
        if(value !== "") selectList.value = value

        const inputDiv = document.createElement("div")
        inputDiv.classList.add("formularioInput")
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


