//almacenar rutas principales
import {Router} from 'express'
const router = Router()

router.get('/', (req,res) => {
    res.render('guias/guias.hbs')
})


export default router