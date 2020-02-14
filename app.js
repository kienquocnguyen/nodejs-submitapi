// load our app server using express

const express = require('express')
const app = express()
const mysql = require('mysql')
var fileupload = require('express-fileupload');

const bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json());
app.use(fileupload({
    limits: { fileSize: 50 * 1024 * 1024 },
}));

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,PATCH,OPTIONS');
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
    next();
  });


app.use(express.static('public'));
//Connect nodejs to MySQL
function getConnection(){
    return mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'polymersubmitpost'
    });
}
const connection = getConnection();


//Upload Post
app.post("/posts", (req, res) => {
    const postAuthor = req.body.post_author;
    const postCategories = req.body.post_categories;
    const postImages = req.body.post_images;
    const postDate = req.body.post_date;
    const postTitle = req.body.post_title;
    const postContent = req.body.post_content;
    const postExcerpt = req.body.post_excerpt;
    const queryString = "INSERT INTO posts (post_author, post_categories, post_images, post_date, post_title, post_content, post_excerpt) VALUES (?, ?, ?, ?, ?, ?, ?)"
    connection.query(queryString, [postAuthor, postCategories, postImages, postDate, postTitle, postContent, postExcerpt], (err, results, fields) =>{
        if(err){
            console.log("Failed to insert")
            res.sendStatus(500)
            return
        }
        console.log("inserted a new user")
        res.end();
    })
})

//Upload images
app.post("/upload", (req, res) => {
    console.log(req.files)
    const file = req.files.file;
    file.mv('./public/images/' + file.name, function(err, results){
        if(err)
            throw err;
        res.send({
            sucess: true,
            message: file.name
        });
    })
})

// localhost:3000
app.listen(3000, () => {
    console.log("Server is listening up on 3000")
})