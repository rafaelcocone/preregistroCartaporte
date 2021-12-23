import express from 'express'
import morgan from 'morgan'
import { engine } from 'express-handlebars'
import path from 'path'

import indexRoutes from './routes/index.routes'
import authRoutes from './routes/authentication.routes'
import cartaporteRoutes from './routes/cartaporte.routes'
import guiasRoutes from './routes/guias.routes'
import mercanciasRoutes from './routes/mercancias.routes'
import clientesRoutes from './routes/clientes.routes'
import vehiculosRoutes from './routes/vehiculos.routes'
import typemodelvehiculosRoutes from './routes/typemodelvehiculos.routes'
import brandvehiculosRoutes from './routes/brandvehiculos.routes'
import typevehiculosRoutes from './routes/typevehiculos.routes'
import insurancecarrierRoutes from './routes/insurancecarrier.routes'
import lowvehiculosRoutes from './routes/lowvehiculos.routes'

import sistema from './routes/system.routes' 
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

app.use(indexRoutes)
app.use(authRoutes)
app.use('/cartaporte',cartaporteRoutes)
app.use('/guias',guiasRoutes)
app.use('/mercancias',mercanciasRoutes )
app.use('/clientes',clientesRoutes)
app.use('/system',sistema)
app.use('/vehiculos',vehiculosRoutes)
app.use('/typemodelvehiculos',typemodelvehiculosRoutes)
app.use('/brandvehiculos',brandvehiculosRoutes)
app.use('/typevehiculos',typevehiculosRoutes)
app.use('/insurancecarrier',insurancecarrierRoutes)
app.use('/lowvehiculos',lowvehiculosRoutes)


//public
app.use(express.static(path.join(__dirname,'public')))

export default app