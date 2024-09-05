const express = require('express');
const router = express.Router();


router.get('', (req,res) => {
    const locals = {
        title:"Blog Title",
        description : "Simple blog site made by - Gokberk"
    }
    res.render('blogs', { locals } )
})

router.get('/blogs', (req,res) => {
    res.render('blogs')
})

module.exports = router;