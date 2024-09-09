// recent-posts.js
const express = require('express');
const router = express.Router();
const db = require('../db'); // Veritabanı Bağlantısı

router.use(async (req, res, next) => {
    try {
        // Son blogları çekin
        const [posts] = await db.query('SELECT id, title, image_url FROM blogs ORDER BY created_at DESC LIMIT 3;');
        res.locals.recentPosts = posts; // Veriyi res.locals üzerinde saklayın
        next(); // Bir sonraki middleware veya route handler'a geçiş yapın
    } catch (error) {
        console.error('Veritabanı hatası:', error);
        next(); // Hata durumunda bile bir sonraki middleware veya route handler'a geçiş yapın
    }
});

module.exports = router;
