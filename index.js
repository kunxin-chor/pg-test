// import in the packages
const express = require('express');

let app = express();
app.set('view engine', 'ejs');

const { Pool} = require('pg')
const pool = new Pool({
  user: 'gitpod',
  host: 'localhost',
  database: 'test',
  password: 'secretpassword',
  port: 5432,
})

// Inform Express where to find static images, css and
// client-side (ie. browser)
app.use(express.static('public'))

// enable forms
app.use( express.urlencoded({
    'extended': false
}))

// ROUTES
app.get('/', async function(req,res){
    let response = await pool.query("SELECT * from accounts");
    console.log(response.rows);
    res.render('accounts', {
        accounts: response.rows
    })
    
})

// START SERVER
app.listen(3000, function(req,res){
    console.log("Server started")
})