import System.Environment

taille :: [Int] -> Int
taille [] = 0
taille (x:xs) = 1 + (taille xs)

element e [] = False
element e (x:xs) = if e==x
                   then True
                   else element e xs

all' ::  (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' f (x:xs) = if f x
                then all' f xs
                else False

--positions :: Eq a =>a -> [a] -> [Int]
positions e l = aux (zip l [0..])
      where aux [] = []
            aux ((x,i):xs) = if x ==e
                             then i : aux xs
                             else aux xs
                
main :: IO()
main = do

print $ taille [1..20]
print $ element 1 [1,2,4,8]
print $ all' even [42,37]
print $ all' even [42,2]
print $ all' even []
print $ positions 42 [42,69,48,42]
