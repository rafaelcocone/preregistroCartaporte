import {Router} from 'express'
const router = Router()
import * as insurancecarrier from '../controllers/insurancecarrier/insurancecarrier.controller.js'

router.get('/', insurancecarrier.getInsuranceCarrier)
router.post('/add', insurancecarrier.addInsuranceCarrier)
router.get('/:id/edit', insurancecarrier.getInsuranceCarrierEdit)
router.post('/:id/edit', insurancecarrier.postInsuranceCarrierEdit)
router.get('/:id/delete', insurancecarrier.deleteInsuranceCarrier)

export default router