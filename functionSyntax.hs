lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)
{- 
    example: factorial 5 = 5 * factorial 4
    factorial 5 = 5 * 4 * factorial 3
    factorial 5 = 5 * 4 * 3 * factorial 2
    factorial 5 = 5 * 4 * 3 * 2 * factorial 1
    factorial 5 = 5 * 4 * 3 * 2 * 1 * factorial 0
    factorial 5 = 5 * 4 * 3 * 2 * 1 * 1
 -}

charName :: Char -> String
charName 'a' = "Alpha"
charName 'b' = "Bravo"
charName 'c' = "Charlie"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]

head' :: [a] -> a
head' [] = error "Can't call head on empty list!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty String???"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight"
    | bmi <= normal = "You're in the center margin of weight"
    | bmi <= fat    = "You're overweight"
    | otherwise     = "You're very overweight"
    where   bmi = weight / height ^ 2
            (skinny, normal, fat)  = (18.5, 25.0, 30.0)

max' :: (Ord a) => a -> a-> a
max' a b
    | a > b     = a
    | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b     = GT
    | a == b    = EQ
    | otherwise = LT

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where   (f:_, l:_) = (firstname, lastname)

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight * height ^ 2