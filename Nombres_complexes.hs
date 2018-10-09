import System.Environment

type Complexe = (Float , Float)

modComp :: Complexe -> Float
modComp (a,b) = sqrt(a*a +b*b)

conjComp :: Complexe -> Complexe
conjComp (a,b) = (a,-b)

addComp :: Complexe -> Complexe -> Complexe
addComp (a,b) (c,d) = (a+c , b+d)
main = do
      print $ modComp(5,6)
      print $ conjComp(5,6)
      print $ addComp(5,6) (5,6)

    
