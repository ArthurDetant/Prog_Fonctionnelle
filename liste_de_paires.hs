import System.Environment

premiers1 :: [(x,y)] -> [x]
premiers1 [] = []
premiers1 (x:xs) = fst x : (premiers1 xs)

premiers2 :: [(x,y)] -> [x]
premiers2 [] = []
premiers2 n= [fst x | x<- n]


main :: IO()
main = do

  print $ premiers1 [(1,2), (8,9), (9,4)]
  print $ premiers2 [(1,2), (8,9), (9,4)]

