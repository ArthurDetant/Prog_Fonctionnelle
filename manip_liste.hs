import System.Environment

main :: IO()
main = do
   let l1 = [37..42]
   print l1
   print $ length l1
   let l3 = take(length l1 `div`2)l1
   print $ l3
   let l2 = reverse l1
   let l4 =reverse (take (length l1 `div`2)l2)
   print $ l4
   print $ (l3,l4)
   
   

