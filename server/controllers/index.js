var models = require('../models');
var bluebird = require('bluebird');

var userFields= ['username'];
var messageFields = ['message', 'username', 'roomname'];



module.exports = {
  messages: {
    get: function (req, res) {
      modules.messages.get(function(err, results){
        res.json(results);
      })
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      var params = [req.body[text], req.body[username], req.body[roomname]];
      modules.messages.post(params, function(err, results){
        res.json(results);
      })
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
       modules.users.get(function(err, results){
        res.json(results);
      })
    },
    post: function (req, res) {
      var params = [req.body[text], req.body[username], req.body[roomname]];
      modules.users.post(params, function(err, results){
        res.json(results);
      })
    }
  }
};

