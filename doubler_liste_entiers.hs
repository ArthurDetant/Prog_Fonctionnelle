import System.Environment
        
doubler1 :: [Int] -> [Int]
doubler1 [] = []
doubler1 (x:xs) = x*2 : (doubler1 xs)

doubler2 :: [Int] -> [Int]
doubler2 [] = []
doubler2 n= [x*2 | x<- n]


doubler3 :: [Int] -> [Int]
doubler3 = map (*2) 

main :: IO()
main = do
   print $ doubler1 [2,4,5,6]
   print $ doubler2 [2,4,5,6,5]
   print $ doubler3 [1,8,6,2,4]


