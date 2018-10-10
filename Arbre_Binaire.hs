import System.Environment

data Arbre =   Noeud0 Int
             | Noeud1 Int Arbre 
             | Noeud2 Int Arbre Arbre
             deriving (Show)

taille :: Arbre -> Int
taille (Noeud0 x) =1
taille (Noeud1 x sa1) =1 + taille sa1
taille (Noeud2 x sa1 sa2) = 1 + taille sa1 + taille sa2

profondeur :: Arbre -> Int
profondeur (Noeud0 x) =1
profondeur (Noeud1 x sa1) = 1 + profondeur sa1
profondeur (Noeud2 x sa1 sa2) = 1 + maximum [profondeur sa1, profondeur sa2] 

main = do
         let arbres = [Noeud2 12 (Noeud1 3 (Noeud0 42)) (Noeud1 7 (Noeud0 37)),Noeud2 12 (Noeud0 3 ) (Noeud2 7 (Noeud0 37) (Noeud0 13)),Noeud1 12 (Noeud2 7 (Noeud0 37)(Noeud0 13)),Noeud2 12 (Noeud1 3 (Noeud0 42)) (Noeud1 7 (Noeud1 13 (Noeud0 37)))]
         mapM_ print arbres
         mapM_ (print . taille) arbres
         mapM_ (print . profondeur) arbres
