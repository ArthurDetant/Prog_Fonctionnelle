import System.Environment

pgcd :: Int -> Int -> Int
pgcd a b = if b==0
           then a
           else pgcd b (a `mod`b )


main :: IO()
main = do

   print $ pgcd 100 800
