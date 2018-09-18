import System.Environment

mul42::Int-> Int
mul42 = (*) 42

null':: Int->Bool
null' = (==0)


main :: IO()
main = do
    
   print $ mul42 2
   print $ null' 0 
