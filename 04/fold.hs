import Data.Char (digitToInt)

myMap :: (a -> b) -> [a] -> [b]
myMap f xs = foldr step [] xs
    where step x ys = f x : ys

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl f z xs = foldr step id xs z
    where step x g a = g (f a x)

asIntFold :: String -> Int
asIntFold [] = 0
asIntFold (x:xs)
    | x == '-' = 0 - (asIntFold xs)
    | otherwise = foldl step 0 (x:xs)
    where step n c = n * 10 + digitToInt c
