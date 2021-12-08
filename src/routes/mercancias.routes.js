import {Router} from 'express'
const router = Router()


import {connect} from '../database'

router.get('/', async (req,res) => {
    const connection  = await connect()
    const [rows] = await connection.query('SELECT * FROM cartaPorteTrMercancias')

    res.render('mercancias/mercancias',{mercancias:rows})
})

router.post('/add', async (req,res) => {
    let status=200
    let sql = `INSERT INTO cartaPorteTrMercancias (
                    cantidad,
                    id_claveUnidad,
                    claveProducto,
                    altura,
                    longitud,
                    ancho,
                    valor,
                    moneda,
                    materialPeligroso,
                    embalaje,
                    STCC,
                    fracArancelaria
                ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)`
    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[
            req.body.cantidad,
            req.body.id_claveUnidad,
            req.body.claveProducto,
            req.body.altura,
            req.body.longitud,
            req.body.ancho,
            req.body.valor,
            req.body.moneda,
            req.body.materialPeligroso,
            req.body.embalaje,
            req.body.STCC,
            req.body.fracArancelaria
        ])
    }catch(e){
        status=400
        result = e.message
    }

    res
        .status(status)
        .redirect('/')
})



router.get('/edit/:id', async (req,res) => {
    let status=200
    let data = []
    try{
        const connection  = await connect()
        const [rows] = await connection.query('SELECT * FROM cartaPorteTrMercancias WHERE id = ? LIMIT 1',[req.params.id])
        if(rows.length === 0) throw "Mercancia no localizada."
        data = rows
           
    }catch(e){
        status=400
        //almacenarresult = e.message
        res
            .status(status)
            .redirect('/mercancias')
    }
    res
        .status(status)
        .render('mercancias/edit',{mercancias:data[0]})
    
    
})

router.post('/edit/:id', async (req,res) => {
    let status=200
    const {id} = req.params

    const {cantidad,
        id_claveUnidad,
        claveProducto,
        altura,
        longitud,
        ancho,
        valor,
        moneda,
        materialPeligroso,
        embalaje,
        STCC,
        fracArancelaria} = req.body

    const updates = {
        cantidad,
        id_claveUnidad,
        claveProducto,
        altura,
        longitud,
        ancho,
        valor,
        moneda,
        materialPeligroso,
        embalaje,
        STCC,
        fracArancelaria
    }
    let sql = `UPDATE cartaPorteTrMercancias set ? WHERE id  = ?`
    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[updates,id] )

    }catch(e){
        status=400
        result = e.message
    }

    res
        .status(status)
        .redirect('/mercancias')
})

router.get('/delete/:id', async (req,res) => {
    let status=200
    const {id} = req.params

    let sql = `DELETE FROM cartaPorteTrMercancias WHERE id  = ?`
    let result = []
    try{
        const connection  = await connect()
        result = await connection.query(sql ,[id] )

    }catch(e){
        status=400
        //almacenarresult = e.message
    }
    res
        .status(status)
        .redirect('/mercancias')
    
    
})



export default router