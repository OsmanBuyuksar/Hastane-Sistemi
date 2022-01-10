var mysql = require('mysql');

var con = mysql.createConnection({
  host: "t501",
  user: "root",
  password: "osman1234"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});