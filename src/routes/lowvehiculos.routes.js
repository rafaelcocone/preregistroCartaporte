import {Router} from 'express'
const router = Router()
import * as lowvehiculos from '../controllers/lowvehiculos/lowvehiculos.controller.js'

router.get('/', lowvehiculos.getLowVehiculos)
router.post('/add', lowvehiculos.addLowVehiculos)
router.get('/:id/edit', lowvehiculos.getLowVehiculosEdit)
router.post('/:id/edit', lowvehiculos.postLowVehiculosEdit)
router.get('/:id/delete', lowvehiculos.deleteLowVehiculos)

export default router