import {Router} from 'express'
const router = Router()
import * as typemodelvehiculos from '../controllers/typemodelvehiculos/typemodelvehiculos.controller.js'

router.get('/', typemodelvehiculos.getTypeModelVehiculos)
router.post('/add', typemodelvehiculos.addTypeModelVehiculos)
router.get('/:id/edit', typemodelvehiculos.getTypeModelVehiculosEdit)
router.post('/:id/edit', typemodelvehiculos.postTypeModelVehiculosEdit)
router.get('/:id/delete', typemodelvehiculos.deleteTypeModelVehiculos)

export default router