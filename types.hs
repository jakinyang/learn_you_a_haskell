removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

addTwoNumbersMoo :: Int -> Int -> Int
addTwoNumbersMoo x y = x + y

factorial :: Integer -> Integer

factorial n = product [1..n]

circumference :: Double -> Double

circumference r = 2 * pi * r