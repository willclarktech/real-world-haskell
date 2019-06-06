data MyList a = Nil | Cons a (MyList a)
    deriving (Show)

fromList [] = Nil
fromList (x:xs) = Cons x (fromList xs)

toList Nil = []
toList (Cons x myList) = x : toList myList
