function Bob() {
  this.hey = function(message) {
    if(is_silence(message)) 
    {
      return "Fine, be that way.";
    }
    else if(is_scream(message))
    {
      return "Woah, chill out!";
    } 
    else if(is_question(message)) 
    {
      return "Sure";
    } 
    else 
    {
      return "Whatever" 
    }
  };

  var is_silence = function(message){
    return (message === "");
  };
  var is_question = function(message){
    return (message.match("\\?$") == "?");
  };
  var is_scream = function(message){
    return (message.toUpperCase() === message);
  };

};

module.exports = Bob
