module Bob (responseFor) where
  import Data.Char (isSpace, isUpper, isAlpha)

  data MessageType = Shout | Silence | Query | Else  

  messageType :: String -> MessageType
  messageType message | all isSpace message = Silence
                      | any isAlpha message && (all isUpper $ filter isAlpha message) = Shout
                      | '?' == last message = Query
                      | otherwise = Else

  response :: MessageType -> String
  response Silence = "Fine. Be that way!"
  response Shout = "Woah, chill out!"
  response Query = "Sure."
  response Else  = "Whatever."  

  responseFor :: String -> String
  responseFor = response . messageType
