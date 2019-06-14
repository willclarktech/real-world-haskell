import Data.List (tails)

suffixes :: [a] -> [[a]]
suffixes xs@(_:xs') = xs : suffixes xs'
suffixes _ = []

suffixes2 :: [a] -> [[a]]
suffixes2 = init . tails
