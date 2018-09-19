import System.Environment

taille :: [Int] -> Int
taille [] = 0
taille (x:xs) = 1 + (taille xs)

element e [] = False
element e (x:xs) = if e==x
                   then True
                   else element e xs


main :: IO()
main = do

print $ taille [1..20]
print $ element 1 [1,2,4,8]

