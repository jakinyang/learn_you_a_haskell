getFizzBuzzOutput :: Int -> String
getFizzBuzzOutput x
    | x `mod` 3 == 0 && x `mod` 5 == 0 = show "FizzBuzz"
    | x `mod` 3 == 0 = show "Fizz"
    | x `mod` 5 == 0 = show "Buzz"
    | otherwise = show x

runFizzBuzz :: [String]
runFizzBuzz = [getFizzBuzzOutput x | x <- [1..100]]