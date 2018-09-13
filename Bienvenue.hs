import Control.Monad
import System.Exit

main = forever $ do
 putStr "Entrez votre nom: "
 nom <- getLine
 if nom == "quit" 
 then exitSuccess 
 else putStrLn ( "Bienvenue " ++ nom ++ " !")

