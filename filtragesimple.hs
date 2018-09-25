import System.Environment

filtragePair :: [Int] -> [Int]
filtragePair = filter even

filtragePair' :: [Int] -> [Int]
filtragePair' [] = []
filtragePair' (x:xs)= if even x
                      then x: (filtragePair' xs)
                      else filtragePair' xs


main :: IO()
main = do

    print $ filtragePair [1,2,3,4,8]
    print $ filtragePair' [1,2,3,4,8]
