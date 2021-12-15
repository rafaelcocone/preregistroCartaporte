import {Router} from 'express'
const router = Router()
import * as excel from '../controllers/system/excel.controller.js'

router.get('/', excel.setData )

export default router