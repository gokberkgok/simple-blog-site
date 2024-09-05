const express = require('express');
const router = express.Router();


router.get('', (req,res) => {
    const locals = {
        title:"Blog Title",
        description : "Simple blog site made by - Gokberk"
    }
    res.render('index', { locals } )
})

router.get('/about', (req,res) => {
    res.render('about')
})

module.exports = router;