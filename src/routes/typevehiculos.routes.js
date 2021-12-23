import {Router} from 'express'
const router = Router()
import * as typevehiculos from '../controllers/typevehiculos/typevehiculos.controller.js'

router.get('/', typevehiculos.getTypeVehiculos)
router.post('/add', typevehiculos.addTypeVehiculos)
router.get('/:id/edit', typevehiculos.getTypeVehiculosEdit)
router.post('/:id/edit', typevehiculos.postTypeVehiculosEdit)
router.get('/:id/delete', typevehiculos.deleteTypeVehiculos)

export default router