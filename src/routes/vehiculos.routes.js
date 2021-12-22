import {Router} from 'express'
const router = Router()
import * as vehiculos from '../controllers/vehiculos/vehiculos.controller.js'

router.get('/', vehiculos.getVehiculos)
router.post('/add', vehiculos.addVehiculos )
router.get('/:id/edit', vehiculos.getVehiculosEdit )
router.post('/:id/edit',vehiculos.postVehiculosEdit )
router.get('/:id/delete',vehiculos.deleteVehiculos )

export default router