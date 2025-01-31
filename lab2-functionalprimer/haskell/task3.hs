module Main where

-- Define the sgn function using guards
sgn x
  | x < 0     = -1
  | x == 0    = 0
  | otherwise = 1

-- Main function
main :: IO ()
main = do
  putStrLn "Please enter a number"
  input <- getLine
  let x = (read input :: Int)  -- Convert input to an integer
  putStrLn (show (sgn x))      -- Print the result of sgn