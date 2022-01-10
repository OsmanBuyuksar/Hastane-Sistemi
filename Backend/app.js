const { json } = require('express');
const express = require('express');
const mysql = require('mysql');
const app = express();
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({'extended': true}))
 
app.get('/', (req,res) => {
    res.end("Node server running...\nYou can get the following tables by typing them in front of the url: \nDoktor \nUzmanlik \nanabilimdali \nHasta \n")
});


app.get('/:kategori', (req,res) => {
    console.log("Fetching user with id:" + req.params.kategori)


    const connection = getConnection()
    const param = req.params.kategori
    const query = "Select * from " + param

    connection.query(query, (err, rows, fields) => {
        console.log(err) 
        console.log("I think we fetched users succesfully")
        res.json(rows)
    })

    //res.end()
});
app.post('/doktor', (req,res) => {
    console.log("got doktor post request")
    console.log(req.body)

    const connection = getConnection()
    console.log(req.headers)
    const ad = req.body.Doktor_adi
    const soyad = req.body.Doktor_soyadi
    const sifre = req.body.Doktor_sifresi
    const anabilim = req.body.anabilim_dali

    const query = "insert into Doktor (Doktor_adi, Doktor_soyadi, Doktor_sifresi, anabilim_dali) values( ?, ?, ?, ? )"

    connection.query(query, [ad,soyad,sifre,anabilim],(err, rows, fields) => {
        console.log(err) 
        console.log("I think we inserted a doctor")
        res.json(rows)
    })
})
//server dinlemeye başladı
const server = app.listen(3000);

function getConnection(){
    return connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '1234',
        database: 'hastanesistemi'
    })
}