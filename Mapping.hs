import System.Environment

mappingDoubler :: [Int] -> [Int]
mappingDoubler  = map (*2) 

mappingDoubler' :: [Int] -> [Int]
mappingDoubler' [] = []
mappingDoubler' (x:xs)=  x*2 :(mappingDoubler' xs)
main :: IO()
main = do

print $ mappingDoubler [1,2,3,4]
print $ mappingDoubler' [4..6]

