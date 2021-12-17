import {Router} from 'express'
const router = Router()
import * as clients from '../controllers/clientes/clients.controller.js'

router.get('/', clients.getClients)

export default router