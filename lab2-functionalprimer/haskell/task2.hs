module Main where

--  the onePlusone function OUTSIDE of main
onePlusone :: IO ()
onePlusone = do
  putStrLn "1 + 1 = 2"

-- Main function
main :: IO ()
main = do
  onePlusone  -- Call the onePlusone function
  putStrLn "Welcome to the programme. Please enter your name"
  name <- getLine
  putStrLn ("Hello " ++ name ++ ", hope you like Haskell.")