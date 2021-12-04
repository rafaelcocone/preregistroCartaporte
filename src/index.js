const express = require('express')
const morgan = require('morgan')
const { engine } = require('express-handlebars')
const path = require('path')

//initializaction
const app = express()


//settings
app.set('port',process.env.PORT || 4000)
app.set('views', path.join(__dirname,'views'))
app.engine('.hbs', engine({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'),'layouts'),
    partialsDir:path.join(app.get('views'),'partials'),
    extname: '.hbs',
    helpers: require('./libs/handlebars')
}))
app.set('view engine', '.hbs')

//middleware
app.use(morgan('dev')) 
app.use(express.urlencoded({extended:false}))
app.use(express.json())


//global variables
app.use((req,res,next) => {
    
    next();
})

//Routes
app.use(require('./routes'))
app.use(require('./routes/authentication'))
app.use('/links',require('./routes/links'))
app.use('/guias',require('./routes/guias'))

//public
app.use(express.static(path.join(__dirname,'public')))

//Starting the server
app.listen(app.get('port'))
console.log("server on port: ",app.get('port'))



