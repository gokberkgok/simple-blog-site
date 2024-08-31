const express = require("express");
const path = require('path');
require('dotenv').config();
const { Sequelize } = require('sequelize');
const app = express();

// Middleware'ler
app.use(express.static("public"));  // Statik dosyalar
app.use(express.urlencoded({ extended: true }));  // Form verilerini işlemek için
app.use(express.json());  // JSON verilerini işlemek için

const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASSWORD, {
    host: process.env.DB_HOST,
    dialect: 'mysql',
  });


// View Engine
app.set('view engine', 'ejs');

// Routerlar
const userRouter = require("./routes/users");
const postRouter = require("./routes/posts");

app.use('/users', userRouter);
app.use('/posts', postRouter);

// Hata yakalama middleware
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Sunucuda bir hata oluştu!');
});
module.exports = sequelize;

// Sunucuyu başlat
app.listen(3000, function () {
    console.log("Server started on http://localhost:3000");
});
