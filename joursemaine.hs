import System.Environment
data Jour = Lundi | Mardi | Mercredi | Jeudi | Vendredi | Samedi | Dimanche deriving (Show)

           
           
estWeekend :: Jour -> Bool
estWeekend Samedi = True
estWeekend Dimanche = True
estWeekend _ = False

compterOuvrables :: [Jour] -> Int
compterOuvrables [] = 0
compterOuvrables (x:xs) = if (estWeekend x) == False
                          then 1 + (compterOuvrables xs)
                          else 0 + (compterOuvrables xs)
                          
compterOuvrables' :: [Jour] -> Int
compterOuvrables' = length.(filter(not.estWeekend))


main = do

     print $ estWeekend Samedi
     
     print $ compterOuvrables [Lundi,Mercredi,Samedi,Mardi]
     
     print $ compterOuvrables' [Lundi,Mercredi,Samedi,Mardi]
