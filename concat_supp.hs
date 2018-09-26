import System.Environment

concat1 :: [[a]] -> [a]
concat1 [] = []
concat1 (x:xs) = x++ concat1 xs

concat2 xs = [u | x <- xs, u <- x]

concat3 = foldl (++) []
--supp1[] = []
--supp1 (x:xs) = fst x: (supp1 xs)
--supp1 ((u,_):xs) = u: (supp1 xs)


main :: IO()
main = do

   --print $ supp1 [2,3,5,8,9]
   print $ concat1 [[1,2,3,4],[5,6,7,8]]
   print $ concat2 [[1,2,3,4],[5,6,7,8]]
   print $ concat3 [[1,2,3,4],[5,6,7,8]]
   
   

  
