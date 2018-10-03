import System.Environment

data Figure = Carre {cote::Float}
            | Rectangle {largeur::Float , hauteur::Float} 
            | Disque {rayon::Float}       

showFigure :: Figure -> String
showFigure (Carre cote) = "Carre de cote " ++ show cote
showFigure (Rectangle hauteur largeur) = "Rectangle de largeur " ++ show largeur ++ " et de hauteur " ++ show hauteur
showFigure (Disque rayon) = "disque de rayon " ++ show rayon

calculerAire :: Figure -> Float
calculerAire (Carre cote) = cote * cote
calculerAire (Rectangle hauteur largeur) = hauteur * largeur
calculerAire (Disque rayon) = 3.1415 * rayon * rayon
main = do


    print $ showFigure (Carre 12)
    print $ showFigure (Rectangle 12 2)
    print $ showFigure (Disque 2)
    print $ calculerAire (Disque 2)

    
