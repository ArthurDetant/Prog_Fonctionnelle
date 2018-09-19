import System.Environment

safetail1 :: [Char] -> [Char]
safetail1 l = if null l
              then []
              else tail l


main :: IO()
main = do

 print $ safetail1 ['a','b']
