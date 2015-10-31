var models = require('../models');
var bluebird = require('bluebird');
var utils = require('../utilsSolution');

message = [];
objectIdCounter =1; 


module.exports = {
  messages: {
    get: function (req, res) {
      modules.messages.get(function(results){
        res.send(results);
      })
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      modules.messages.post(req.body, function(results){
        res.send(results);
      })
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {
      // utils.collectData(req, function(message){
      //   console.log('yooooooooooooooooooooooo momma')
      //   message.objectId = ++objectIdCounter;
      //   messages.push(message);
      //   utils.sendResponse(res, {objectId: message.objectId}, 201);
      // });
    }
  }
};

