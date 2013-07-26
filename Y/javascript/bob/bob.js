function Bob() {
  this.hey = function(message) {
    if(message === "") 
    {
      return "Fine, be that way.";
    }
    else if(message.toUpperCase() === message)
    {
      return "Woah, chill out!";
    } 
    else if(message.match("\\?$") == "?") 
    {
      return "Sure";
    } 
    else 
    {
      return "Whatever" 
    }
  };
};

module.exports = Bob
