const express = require('express')
const router = express.Router();

router.get('/', (req, res) => {
    res.send('User List')
})

router
    .route("/:id")
    .get((req,res) => {
        res.send(`Get User id : ${req.params.id}`)
    })
    .put((req,res) => {
        res.send(`Update User id : ${req.params.id}`)
    })
    .delete((req,res) => {
        res.send(`Delete User id : ${req.params.id}`)
    })

router.param("id", (req, res , next , id) => {
    console.log(id)
    next()
})
module.exports = router;