const express = require('express');
const router = express.Router();
const db = require('../db'); // Veritabanı bağlantınızı burada tanımlayın


router.get('', async (req,res) => {
    try {
        // SQL sorgusu ile blog verilerini çekin
        const [blogs] = await db.query('SELECT * FROM blogs');
        
        // blogs verisini admin.ejs'ye gönderin
        res.render('admin', { blogs: blogs });
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
})

// Blog ekleme formunu gösteren route
router.get('/add', (req, res) => {
    res.render('add-blog');
});

// Blog ekleme işlemini işleyen route
router.post('/add', async (req, res) => {
    const { title, content, category, image_url } = req.body;

    try {
        await db.query('INSERT INTO blogs (title, content, category, image_url) VALUES (?, ?, ?, ?)', 
            [title, content, category, image_url]
        );
        res.redirect('/admin'); // Başarıyla eklendiğinde admin sayfasına yönlendir
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
});


module.exports = router;