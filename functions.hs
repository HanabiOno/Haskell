module Assingment7 where

-- Sum list
sum :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs 