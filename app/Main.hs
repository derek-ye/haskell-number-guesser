module Main (main) where

getGuess :: IO ()
getGuess = do
    guess <- getLine
    case isCorrectGuess $ read guess of
        True -> putStrLn "You guessed the right number!"
        False -> do
            putStrLn "Wrong number, try again"
            getGuess

isCorrectGuess :: Int -> Bool
isCorrectGuess x = x == 5

main :: IO ()
main = do
    putStrLn "Make a guess"
    getGuess

