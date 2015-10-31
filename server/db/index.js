var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

module.exports.connection = connection;

var connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password: '',
  database: 'chat'
});

connection.connect(function(err){
  if(err){
    console.log('Error connecting to the Db');
    return;
  }
  console.log('Connection established');
});

connection.query('SELECT * FROM messages', function(err, rows, fields){
  if(err) {
    // console.log('errwefyewgfgfegfwgifweigw');
  }
  console.log('The solution is: ', rows);
});

connection.end(function(err){

});