-- let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]

-- let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10],  a + b + c == 24, a^2 + b^2 == c^2 ]


removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]