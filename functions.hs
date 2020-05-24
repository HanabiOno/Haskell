module Functions where

-- Sum list
sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- all-true one-true
alltrue' :: [Bool] -> Bool
alltrue' [] = True
alltrue' (x:xs) | x == True = alltrue' xs
                | otherwise = False

onetrue' :: [Bool] -> Bool
onetrue' [] = False
onetrue' (x:xs) | x == True = True
                | otherwise = onetrue' xs

-- cat
cat' :: [String] -> String
cat' [] = ""
cat' (x:xs) = x ++ cat'(xs)

-- inf & sup
infsup' :: (Num a, Ord a) => [a] -> (a -> a -> a) -> a
infsup' (n:[]) f = n
infsup' (n:ns) f = f n (infsup' ns f)
