(function() {
  'use strict';
  function Words(input) {
    var words = input.match(/\w+/gi);
    var counts = {}

    this.count = (function(){
      words.forEach(function(word) {
        var currentWord = word.toLowerCase();
        if (counts[currentWord] == undefined) {
          counts[currentWord] = 0;
        } 
          
        counts[currentWord] += 1;
      })
      return counts;      
    }());
  
  }

  module.exports = Words;
}());
