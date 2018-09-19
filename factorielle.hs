import System.Environment

factorielle :: Int -> Int
factorielle n = if n==1
                then 1
                else n * factorielle (n-1)

factorielle' = aux 1
              where aux acc 0 = acc
                    aux acc n = aux (acc*n) (n-1)               
                

main :: IO()
main = do

print $ factorielle 4
print $ factorielle 4

