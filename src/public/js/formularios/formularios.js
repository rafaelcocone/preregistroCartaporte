const FORM_ELEMENTS = {
    "input": ({name, title,  value= ""}) => {
        let innerHTML = `
            <div class="formularioRow mb-3">
                <div class="formularioLabel">
                    <label for="${name}">${title}:</label>
                </div>
                <div class="formularioInput">
                    <input 
                    type="text"
                    id="${name}"
                    name="${name}"
                    placeholder ="${title}"
                    value ="${value}"
                    class= "form-control rounded-0 bg-dark text-white"
                    >
                </div>
            </div> `
        return  innerHTML
    },
    "select": ({name, title,data = [] ,value = ""} ) => {
        let options = (data.length > 0) ?
                    "Seleccione una opción." :
                    "Sin opciónes disponibles."
        data.forEach((item) =>{
            let valor = (item.id) ? item.id : item.key
            options += `<option value = "${valor}">${item.description}</option>`
        })
        let innerHTML = `
            <div class="formularioRow mb-3">
                <div class="formularioLabel">
                    <label for="${name}">${title}:</label>
                </div>
                <div class="formularioInput">
                    <select  
                        id="${name}"
                        name="${name}"
                        value="${value}"
                        class= "form-control rounded-0 bg-dark text-white"
                    >
                    ${options}
                    </select>
                </div>
            </div> `
        return  innerHTML
    },
    "button": (type,title,func = null) => {
        const inputRef = document.createElement("input")
        inputRef.type = type
       // inputRef.id =  title
        inputRef.value = title
        if(func) inputRef.onclick = func
        return inputRef
    },
    "inputButton": (type,title,func = null) => {
        const inputRef = document.createElement("input")
        inputRef.type = type
       // inputRef.id =  title
        inputRef.value = title
        if(func) inputRef.onclick = func
        return inputRef
    },
    "buttonDivForm": ({submitName}) => {
        let innerHTML = `
            <div class="formularioRow mb-3">
                <div class="formularioDivButtons">
                    <button 
                      
                        class="btn btn-primary btm-sm m-2"
                    >${submitName}
                    </button>
                    <button 
                        type="reset"
                        class="btn btn-secondary btm-sm m-2"
                    >Limpiar
                    </button>
                </div>
            </div> `
        return  innerHTML
    }
}


