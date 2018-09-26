import System.Environment

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = (quicksort lesser) ++ [x] ++ (quicksort greater)
                   where lesser = filter (< x) xs
                         greater = filter (>= x) xs  
                         
quicksort' :: [Int] -> [Int]
quicksort' [] = []
quicksort' (x:xs) = (quicksort' greater) ++ [x] ++ (quicksort' lesser)
                   where lesser = filter (< x) xs
                         greater = filter (>= x) xs 

quicksort'' :: [Int] -> [Int]
quicksort'' [] = []
quicksort'' (x:xs) = (quicksort' greater) ++ [x] ++ (quicksort' lesser)
                   where lesser = filter (< x) xs
                         greater = filter (> x) xs                          


main :: IO()
main = do
   
    print $ quicksort [5,89,36,48,5,2,24,0]
    print $ quicksort' [5,89,36,48,5,2,24,0]
    print $ quicksort'' [5,89,36,48,5,2,24,0]
    

