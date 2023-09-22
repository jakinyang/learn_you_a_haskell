getFizzBuzzOutput :: Int -> String
getFizzBuzzOutput x
    | fizzbuzz = "FizzBuzz"
    | fizz = "Fizz"
    | buzz = "Buzz"
    | otherwise = show x
    where fizzbuzz = x `mod` 3 == 0 && x `mod` 5 == 0
          fizz = x `mod` 3 == 0
          buzz = x `mod` 5 == 0 

main :: IO ()
main = do
  sequence_ [putStrLn (getFizzBuzzOutput x) | x <- [1..100]]
