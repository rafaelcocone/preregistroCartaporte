import express from 'express'
const router = express.Router()

import {connect} from '../database'


router.get('/create', (req,res) => {
    res.send('creacion de carta porte')
})

router.get('/', (req,res) => {
    res.send('Carta porte')
})


module.exports = router