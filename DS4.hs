import System.Environment




getPairs1 :: [(Int,b)] -> [(Int,b)]
getPairs1 [] = []
getPairs1 (x@(u,v):xs)= if even u
                  then x: (getPairs1 xs)
                  else getPairs1 xs
                  
getPairs2 = filter(even . fst)

getPairs3 xs = [ x | x@(u,_)<- xs, even u]


main :: IO()
main = do

      print $ getPairs1 [(1,'a'),(2,'b'),(3,'c'),(4,'d')]
      
