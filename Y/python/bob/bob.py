class Bob():
  def hey(self, message):
    message = Message(message)
    if message.is_query():
      return 'Sure.'
    elif message.is_silent():
      return 'Fine. Be that way.'
    elif message.is_shout():
      return 'Woah, chill out!'
    else:
      return 'Whatever.'

class Message():
  def __init__(self, message):
    self.message = message
  
  def is_silent(self):
    return self.message == ''

  def is_shout(self):
    return self.message == self.message.upper()

  def is_query(self):
    return self.message[-1:] == '?'
