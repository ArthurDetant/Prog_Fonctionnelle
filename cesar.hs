import System.Environment
import Data.Char
     
decaler :: Int -> Char -> Char
decaler n c = if isLower c then c' else c
     where c' = chr $ (ord c - ord 'a' +n) `mod` 26 + ord 'a'


chiffrerCesar :: Int -> String -> String
chiffrerCesar n "" =  ""
chiffrerCesar n (x:xs) = decaler n x : (chiffrerCesar n xs)
--chiffrerCesar n =map(decaler n)

compterOccurences :: Char -> String -> Int
compterOccurences c s = length [x'|x'<-s, c==x']
--compterOccurences c = length . filter (==c)
  
compterLettres :: String -> Int
compterLettres [] = 0
compterLettres (x:xs) = (if isLower x then 1 else 0) + compterLettres xs
--compterLettres = length . (filter isLower)

frequencesUk :: [Float]
frequencesUk = [0.082, 0.015, 0.028, 0.043, 0.127, 0.022, 0.02, 0.061, 0.07,
                0.002, 0.008, 0.04, 0.024, 0.067, 0.075, 0.019, 0.001, 0.06,
                0.063, 0.091, 0.028, 0.01, 0.024, 0.002, 0.02, 0.001]

calculerFrequences :: String -> [Float]
calculerFrequences str = map f ['a'..'z']
          where nbLettres = fromIntegral $ compterLettres str
                f c = fromIntegral (compterOccurences c str) / nbLettres

calculerChi2 :: [Float] -> [Float] -> Float
calculerChi2 xs fs = sum $ map fErr $ zip xs fs
                where fErr (fi',fi) = (fi' - fi)**2 /fi

casserCesar :: String -> [Float] -> Int
casserCesar str freqs = snd $ minimum $ zip errs [0..]
       where errs = map f [0..25]
             f n = calculerChi2 (calculerFrequences(chiffrerCesar n str)) freqs


main = do

     --print $ decaler 27 'c'
     --print $ chiffrerCesar 2 "hal"
     --print $  compterOccurences 'b' "abababababababc"
     --print $  compterLettres "toto toto"     
     --print $  calculerFrequences "test"
     --print $ calculerChi2 (calculerFrequences "test") frequencesUk
     --print $ casserCesar "ftq qmsxq zqhqd xaef ea ygot fuyq me itqz tq egnyuffqp fa xqmdz ar ftq odai" frequencesUk
     --print $ chiffrerCesar 14 "ftq qmsxq zqhqd xaef ea ygot fuyq me itqz tq egnyuffqp fa xqmdz ar ftq odai"
     
     --str <- readFile "toto.txt"
     --putStrLn str
     
     
     args <- getArgs
     filename <- readFile (head args)
     
   
    
     print $ chiffrerCesar(casserCesar filename frequencesUk) filename
