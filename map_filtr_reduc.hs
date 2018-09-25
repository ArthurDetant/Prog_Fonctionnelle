import System.Environment

absList :: [Int] -> [Int]
absList  = map abs

maxList :: [Int] -> Int
maxList (x:xs) = foldl max x xs
                    

main :: IO()
main = do
    print $ absList [1,-8,-9,5,7,-6]
    print $ maxList [1,-8,-9,5,7,-6]

