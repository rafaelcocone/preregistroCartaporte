import {Router} from 'express'
const router = Router()
import * as mercancias from '../controllers/cartaporte/mercancias.controller.js'

router.get('/', mercancias.getMercancias)
router.post('/add', mercancias.addMercancias )
router.get('/:id/edit', mercancias.getMercanciasEdit )
router.post('/:id/edit',mercancias.postMercanciasEdit )
router.get('/:id/delete',mercancias.deleteMercancias )

export default router