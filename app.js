const express = require("express");

const connection = require('./db');

require('dotenv').config();

const app = express();
const PORT = 3000 || process.env.PORT;
app.use(express.json());  // JSON verilerini işlemek için

// Middleware'ler
app.use(express.static("public"));  // Statik dosyalar
app.use(express.urlencoded({ extended: true }));  // Form verilerini işlemek için

// Middleware to fetch recent posts
const recentPostsMiddleware = require('./routes/recent-posts');
app.use(recentPostsMiddleware);


// View Engine
app.set('view engine', 'ejs');

// Routers
const blogsRouter = require("./routes/blogs");
app.use('/blogs', blogsRouter);

const adminRouter = require("./routes/admin");
app.use('/admin', adminRouter);
const postRouter = require("./routes/post");
app.use('/post', postRouter);
const recentPostsRouter = require('./routes/recent-posts');
app.use('/recent-posts', recentPostsRouter);

app.use('/',require('./routes/main'))


// Hata yakalama middleware
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send("There was an error on server. Error code : \n "+err)
});

// Sunucuyu başlat
app.listen(PORT, () => {
    console.log("Server started on http://localhost:3000");
});