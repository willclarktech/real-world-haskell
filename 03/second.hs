mySecond :: [a] -> a
mySecond xs = if null (tail xs)
    then error "list too short"
    else head (tail xs)

safeSecond :: [a] -> Maybe a
safeSecond (_:x:_) = Just x
safeSecond _ = Nothing
