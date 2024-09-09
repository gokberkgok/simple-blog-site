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
    const filter = req.query.filter;  // Kategoriyi URL'den alıyoruz.
    const query = filter && filter !== null ? 'SELECT * FROM blogs WHERE category = ?' : 'SELECT * FROM blogs'
    try {
        // SQL sorgusu ile blog verilerini çekin
        const [blogs] = filter && filter !== null ? await db.query(query, [filter]) : await db.query('SELECT * FROM blogs');
        const [categories] = await db.query('SELECT id, name FROM categories');
        blogs == null || blogs == "" ? console.log("blog yok") : ""
        // blogs verisini admin.ejs'ye gönderin
        res.render('blogs', { blogs, categories,  selectedCategory: filter || 'All' });
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
   
})

router.get('/blogs', (req,res) => {
   
})
router.get('/blogs', async (req,res) => {
  
})

module.exports = router;