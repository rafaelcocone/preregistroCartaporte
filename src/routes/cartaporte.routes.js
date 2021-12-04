//almacenar rutas principales
import {Router} from 'express'
const router = Router()


import {connect} from '../database'


router.get('/create', (req,res) => {
    res.send('creacion de carta porte')
})

router.get('/', (req,res) => {
    res.render('cartaporte/cartaporte.hbs')
})


export default router