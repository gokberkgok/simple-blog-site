const express = require('express');
const router = express.Router();
const db = require('../db'); // Database Connection
const { route } = require('./blogs');


router.get('', async (req,res) => {
    try {
        // SQL sorgusu ile blog verilerini çekin
        const [blogs] = await db.query('SELECT * FROM blogs');
        blogs == null || blogs == "" ? console.log("blog yok") : ""
        // blogs verisini admin.ejs'ye gönderin
        res.render('admin', { blogs: blogs });
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
})

// Blog ekleme formunu gösteren route
router.get('/add', async (req, res) => {
    try {
        // SQL sorgusu ile kategorileri çekin
        const [categories] = await db.query('SELECT id, name FROM categories');
        
        // Kategorileri add-blog.ejs'ye gönderin
        res.render('add-blog', { categories });
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
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

router.get('/edit/:id', async (req, res, next) => {
    const blogId = req.params.id;
    try {
        const [blogs] = await db.query('SELECT * FROM blogs WHERE id = ?', [blogId]);
        const [categories] = await db.query('SELECT * FROM categories'); // Kategorileri çekiyoruz
        if (blogs.length > 0) {
            res.render('edit-blog', { blogs ,categories});
        } else {
            res.status(404).send('Blog bulunamadı');
        }
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
});

// Blog ekleme işlemini işleyen route
router.post('/edit/:id', async (req, res) => {
    const blogId = req.params.id;
    const { title, content, category, image_url } = req.body;
    try {
        await db.query(
            'UPDATE blogs SET title = ?, content = ?, category = ?, image_url = ? WHERE id = ?',
            [title, content, category, image_url, blogId]
        );
        res.redirect('/admin'); // Başarıyla güncellendiğinde admin sayfasına yönlendir
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
});

// Blog silme işlemini işleyen route
router.get('/delete/:id', async (req, res) => {
    const blogId = req.params.id;
    try {
        await db.query( 'DELETE FROM blogs WHERE id = ?',  [blogId] );
        res.redirect('/admin'); // Başarıyla eklendiğinde admin sayfasına yönlendir
        console.log(`${blogId} id blog silindi`)
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
});


module.exports = router;