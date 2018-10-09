import System.Environment

data Liste = Nil | Cons Int Liste 

data ListeA a = NilA | ConsA a (ListeA a) 

showListe :: Liste -> String
showListe Nil = ""
showListe (Cons i l) = show i ++ " " ++ showListe l

showListeA :: Show a => ListeA a -> String
showListeA NilA = ""
showListeA (ConsA x xs) = show x ++ " " ++ showListeA xs

convertListe :: [Int] -> Liste
convertListe = foldr Cons Nil

convertListeA :: [a] -> (ListeA a)
convertListeA [] = NilA
convertListeA (x:xs) = ConsA x (convertListeA xs)


sumListe :: Liste -> Int
sumListe Nil = 0
sumListe (Cons x xs ) = x + sumListe xs

sumListeA :: Num a => ListeA a -> a
sumListeA NilA = 0
sumListeA (ConsA x xs) = x + sumListeA xs



main = do

    print $ showListe $ Cons 13 (Cons 37 Nil)
    putStrLn $ showListe $ convertListe [1..4]   
    print $ sumListe $ convertListe [1..4]
    print $ showListeA $ ConsA 13 (ConsA 37 NilA)
    putStrLn $ showListeA $ convertListeA ["toto", "titi"]   
    print $ sumListeA $ convertListeA [1..4]
    
