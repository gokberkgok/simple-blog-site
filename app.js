const express = require("express");
const path = require('path');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const connection = require('./db');

require('dotenv').config();

const app = express();
const PORT = 3000 || process.env.PORT;
app.use(express.json());  // JSON verilerini işlemek için

// Middleware'ler
app.use(express.static("public"));  // Statik dosyalar
app.use(express.urlencoded({ extended: true }));  // Form verilerini işlemek için

// View Engine
app.set('view engine', 'ejs');

// Routers
const blogsRouter = require("./routes/blogs");
app.use('/blogs', blogsRouter);

const adminRouter = require("./routes/admin");
app.use('/admin', adminRouter);

app.use('/',require('./routes/main'))


// Hata yakalama middleware
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send("Sunucuda bir hata oluştu Hata Kodu : \n "+err)
});

// Sunucuyu başlat
app.listen(PORT, () => {
    console.log("Server started on http://localhost:3000");
});



/*
// Kayıt
app.post('/register', (req, res) => {
    const { username, email, password } = req.body;
    const hashedPassword = bcrypt.hashSync(password, 10);
    connection.query(
      'INSERT INTO users (username, email, password) VALUES (?, ?, ?)', [username, email, hashedPassword], (err, results) => {
        if (err) {
          return res.status(500).json({ error: 'Kayıt işlemi başarısız.' });
        }
        res.status(201).json({ message: 'Kullanıcı başarıyla kaydedildi.' });
      }
    );
});

// Login endpoint
app.post("/login", (req, res) => {
  const { email, password } = req.body;

  // Kullanıcıyı veritabanında bul
  const query = "SELECT * FROM users WHERE email = ? AND password = ?";
  connection.query(query, [email, password], (err, results) => {
    if (err) {
      return res.status(500).json({ message: "Sunucu hatası" });
    }

    if (results.length === 0) {
      return res.status(401).json({ message: "Geçersiz email veya şifre" });
    }

    const user = results[0];

    // Kullanıcı doğrulandı, token oluştur
    const token = jwt.sign({ id: user.id }, "gizliAnahtar", { expiresIn: "1h" });

    res.json({ message: "Giriş başarılı", token });
    console.log("Token : " + token)
  });
});*/