import {Router} from 'express'
const router = Router()


import {connect} from '../database'


router.get('/add', (req,res) => {
    res.send('creacion de carta porte')
})

router.get('/', (req,res) => {
    res.render('mercancias/mercancias.hbs')
})


export default router