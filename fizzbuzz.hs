getFizzBuzzOutput :: Int -> String
getFizzBuzzOutput x
    | x `mod` 3 == 0 && x `mod` 5 == 0 = "FizzBuzz"
    | x `mod` 3 == 0 = "Fizz"
    | x `mod` 5 == 0 = "Buzz"
    | otherwise = show x

main :: IO ()
main = do
  sequence_ [putStrLn (getFizzBuzzOutput x) | x <- [1..100]]
