import {Router} from 'express'
const router = Router()
import * as brandvehiculos from '../controllers/brandvehiculos/brandvehiculos.controller.js'

router.get('/', brandvehiculos.getBrandVehiculos)
router.post('/add', brandvehiculos.addBrandVehiculos)
router.get('/:id/edit', brandvehiculos.getBrandVehiculosEdit)
router.post('/:id/edit', brandvehiculos.postBrandVehiculosEdit)
router.get('/:id/delete', brandvehiculos.deleteBrandVehiculos)

export default router