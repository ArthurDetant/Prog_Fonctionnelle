import System.Environment
 
doubler' :: Int -> Int 
doubler' = (2*)

tete' :: [a] -> a
tete' = (head)

fTete' :: [Double] -> Double
fTete' = (2*).sqrt.head

twice ::(a->a) ->a ->a
twice f = f.f

main :: IO()
main = do
   
   print $ doubler' 2
   print $ tete' [2..5]
   print $ fTete' [2..5]
   
