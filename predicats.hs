import System.Environment

estPair :: Int -> Bool
estPair n = n `mod` 2 == 0

main :: IO()
main = do
    
    print $ estPair 42
    print $ estPair 43
