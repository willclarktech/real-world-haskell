class BasicEq a where
    isEqual :: a -> a -> Bool

instance BasicEq Bool where
    isEqual True True = True
    isEqual False False = True
    isEqual _ _ = False


class BasicEq2 a where
    isEqual2 :: a -> a -> Bool
    isNotEqual2 :: a -> a -> Bool

class BasicEq3 a where
    isEqual3 :: a -> a -> Bool
    isEqual3 x = not . (isNotEqual3 x)

    isNotEqual3 :: a -> a -> Bool
    isNotEqual3 x = not . (isEqual3 x)

data Color = Red | Green | Blue
    deriving (Read, Show, Eq, Ord)

instance BasicEq3 Color where
    isEqual3 Red Red = True
    isEqual3 Green Green = True
    isEqual3 Blue Blue = True
    isEqual3 _ _ = False

-- instance Show Color where
--     show Red = "Red"
--     show Green = "Green"
--     show Blue = "Blue"

-- instance Read Color where
--     readsPrec _ value =
--         tryParse [("Red", Red), ("Green", Green), ("Blue", Blue)]
--         where
--             tryParse [] = []
--             tryParse ((attempt, result):xs) =
--                 if (take (length attempt) value) == attempt
--                 then [(result, drop (length attempt) value)]
--                 else tryParse xs
