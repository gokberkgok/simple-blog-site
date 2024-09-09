const express = require('express');
const router = express.Router();
const db = require('../db'); // Veritabanı bağlantınızı burada tanımlayın

router.get('/:id', async (req, res, next) => {
    const blogId = req.params.id;
    try {
        const [blogs] = await db.query('SELECT * FROM blogs WHERE id = ?', [blogId]);
        console.log(blogs); // Konsola veriyi yazdırın
        if (blogs.length > 0) {
            res.render('post', {blogs: blogs[0]} );
        } else {
            res.status(404).send('Blog bulunamadı');
        }
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send('Veritabanı hatası');
    }
});

module.exports = router;
