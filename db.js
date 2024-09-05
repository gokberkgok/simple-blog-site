const mysql = require('mysql2/promise');

// MySQL veritabanı bağlantı ayarları
const connection = mysql.createPool({
    host: 'localhost', // Veritabanı sunucu adresi
    user: 'root',      // Veritabanı kullanıcı adı
    password: '',      // Veritabanı şifresi
    database: 'blogdb', // Veritabanı adı
    waitForConnections: true,
    connectionLimit: 10, // Maksimum bağlantı sayısı
    queueLimit: 0
});

// Veritabanı havuzunu dışa aktar
module.exports = connection;
