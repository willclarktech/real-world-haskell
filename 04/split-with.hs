splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith f [] = []
splitWith f [x] = case f x of
    True -> [[x]]
    False -> [[]]
splitWith f (x:xs) = let (first:others) = splitWith f xs
    in case f x of
        True -> (x:first):others
        False -> []:first:others

