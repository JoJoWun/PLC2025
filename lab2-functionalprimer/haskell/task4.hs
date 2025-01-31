module Main where

-- Define the ask function
ask :: String -> IO ()
ask prompt =
  do
    putStrLn prompt
    line <- getLine
    if line == "quit"
      then putStrLn "quitting..."
      else if line == ""
        then ask (prompt ++ "/")  -- Add a "/" to the prompt
        else putStrLn ("you said: " ++ reverse line)

-- Main function
main :: IO ()
main =
  do
    let prompt = "please say something"
    ask prompt