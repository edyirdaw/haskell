lucky :: Integral a => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

betn :: Integral a => a -> String
betn 1 = "Between 1 and 5"
betn 2 = "Between 1 and 5"
betn 3 = "Between 1 and 5"
betn 4 = "Between 1 and 5"
betn 5 = "Between 1 and 5"
betn x = "Not between 1 and 5"

fact :: Integral x => x -> x
fact 0 = 0
fact 1 = 1
fact x = x * fact (x - 1)

fact_2 :: Int -> Int
fact_2 0 = 0
fact_2 1 = 1
fact_2 x = x * fact (x - 1)

addVectors :: (Int,Int) -> (Int,Int) -> (Int,Int)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors_2 :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors_2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

rt_1 :: Int
rt_1 = 10

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs) -- The parentheses are needed here to avoid ambiguity
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
   let smallerSorted = quicksort [a | a <- xs, a <= x]
       biggerSorted = quicksort [a | a <- xs, a > x]
   in  smallerSorted ++ [x] ++ biggerSorted

-- (/2) raises error while d = (/2) doesn't

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys






