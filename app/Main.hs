module Main (main) where

getGuess :: (Int -> Bool) -> IO ()
getGuess check = do
    guess <- getLine
    case check $ read guess of
        True -> putStrLn "You guessed the right number!"
        False -> do
            putStrLn "Wrong number, try again"
            getGuess check

getCorrectAns :: IO Int
getCorrectAns = do
    correctAns <- readLn :: IO Int
    pure correctAns

isCorrectGuess :: Int -> Int -> Bool
isCorrectGuess ans guess = ans == guess

main :: IO ()
main = do
    putStrLn "What is the secret number?"
    ans <- getCorrectAns
    let check = isCorrectGuess ans
    putStrLn "Make a guess"
    getGuess check

