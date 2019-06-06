fromMaybe defval wrapped =
    case wrapped of
        Nothing -> defval
        Just value -> value

niceDrop n xs | n <= 0 = xs
niceDrop _ [] = []
niceDrop n (_:xs) = niceDrop (n - 1) xs
