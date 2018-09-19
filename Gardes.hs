import System.Environment

analyseTemp :: Int -> String
analyseTemp t
            | t< (-20) = "Frisquet"
            | t<20 = "Nirvana"
            | otherwise = "canicule"
          
analyseTemp' t = if t <(-20)
               then "frisquet"
               else if t<20
               then "nirvana"
               else "canicule"
main :: IO()
main = do

  print $ analyseTemp (20)
  print $ analyseTemp' (20)
