const mysql = require('mysql2/promise');
require('dotenv').config();
// MySQL veritabanı bağlantı ayarları
const connection = mysql.createPool({
    host: process.env.DB_HOST, // Veritabanı sunucu adresi
    user: process.env.DB_USER,      // Veritabanı kullanıcı adı
    password: process.env.DB_PASSWORD,      // Veritabanı şifresi
    database: process.env.DB_NAME, // Veritabanı adı
    waitForConnections: true,
    connectionLimit: 10, // Maksimum bağlantı sayısı
    queueLimit: 0
});

// Veritabanı havuzunu dışa aktar
module.exports = connection;
