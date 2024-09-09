const express = require('express');
const router = express.Router();
const db = require('../db'); // Veritabanı bağlantınızı burada tanımlayın
const { route } = require('./blogs');


router.get('', async (req,res) => {
    /*const locals  = {
        title:"Blog Title",
        description : "Simple blog site made by - Gokberk"
    }
    res.render('blogs', { locals } )*/

    try {
        // SQL sorgusu ile blog verilerini çekin
        const [blogs] = await db.query('SELECT * FROM blogs');
        blogs == null || blogs == "" ? console.log("blog yok") : ""
        // blogs verisini admin.ejs'ye gönderin
        res.render('blogs', { blogs: blogs });
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
})

router.get('/blogs', (req,res) => {
   
})

module.exports = router;