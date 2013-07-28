(function() {
  'use strict';
  function Bob() {

    this.hey = function(message) {
      if(isSilence(message)) {
        return "Fine, be that way.";
      } else if(isScream(message)) {
        return "Woah, chill out!";
      } else if(isQuestion(message)) {
        return "Sure";
      } else {
        return "Whatever"; 
      }
    };

    var isSilence = function(message){
      return (message == "");
    };
    var isQuestion = function(message){
      return (message.slice(-1) == "?");
    };
    var isScream = function(message){
      return (message.toUpperCase() === message);
    };
  }
  module.exports = Bob;
}());
