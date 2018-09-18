import System.Environment

mul42 = \n-> n*42
----------------------------------------------------------
foisTrois = \n-> n*3
plusUn = \n-> n+1
foisTroisplusUn :: Int -> Int
foisTroisplusUn n = plusUn (foisTrois n)
----------------------------------------------------------

main :: IO()
main = do
    
    print $ mul42 2
    print $ foisTroisplusUn 3
