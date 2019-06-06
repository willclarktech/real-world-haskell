data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving (Show)

simpleTree = Node "parent"
    (Node "left child" Empty Empty)
    (Node "right child" Empty Empty)

data MaybeTree a = MNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a))
    deriving (Show)

simpleMaybeTree = MNode "parent"
    (Just (MNode "left child" Nothing Nothing))
    (Just (MNode "right child" Nothing Nothing))

nodesAreSame (Node a _ _) (Node b _ _)
    | a == b = Just a
    | otherwise = Nothing
