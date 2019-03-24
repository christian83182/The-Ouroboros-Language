import Data.List

comprehendList :: String -> [[Int]]
comprehendList s = map (map read) streams :: [[Int]]
    where streams = Data.List.transpose (splitOnWhitespace (split s '\n'))

splitOnWhitespace :: [String] -> [[String]]
splitOnWhitespace (x:xs) = (split x ' ') : (splitOnWhitespace xs)
splitOnWhitespace [] = []

split :: String -> Char -> [String]
split [] char = [""]
split (x:xs) char
    | x == char = "" : rest
    | otherwise = (x : head rest) : tail rest
    where
        rest = split xs char
        
