import System.Environment

data Arbre a = Noeud0
             | Noeud1 (Arbre a)
             | Noeud2 (Arbre a) (Arbre a)
             deriving (Show)

main = do



