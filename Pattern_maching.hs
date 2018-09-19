import System.Environment

null' ::[a] -> Bool
null' [] = True
null' _= False

head' :: [a] -> a
head' (x:_) = x


tail' :: [a] -> [a]
tail' (x:xs) = xs

fst' :: (a,b) -> a
fst' (x,_) = x

snd' :: (a,b) ->b
snd' (_,y) = y

main :: IO()
main = do
  
   print $ null' []
   print $ null' [1..4]
   
   print $ head' [4..9]
   print $ tail' [4..9]

   print $ fst' ("ghjb","ion")
   print $ snd' ("ghjb","ion")
