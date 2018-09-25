import System.Environment

multiples :: Int -> [(Int,Int)]
multiples n = [(u,v) | u<-[1..n], v<- [u..n], u*v==n]

tripletPyth n = [(u,v,w) | u<-[1..n], v<- [u..n], w<- [v..n], u*u+v*v==w*w]     

main :: IO()
main = do
   print $ [x | x<- [0,2..42] ]
   print $ [x | x<- [0..42], even x]
   print $ [if even x then x else (-x) | x<- [2..13]]
   print $ multiples 21

