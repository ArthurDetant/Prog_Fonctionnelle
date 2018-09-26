import System.Environment
     

type Contact = (String, String)     -- (name, email)
type Base = [Contact]

search :: Base -> String -> Bool
search [] s = False
search (x:xs) s = if fst x == s
                  then True
                  else (search xs s)

insert :: Base -> Contact -> Base
insert b c = if search b (fst c) then b else c:b

update :: Base -> Contact -> Base
update b c@(n,_)
    | search b n = map up b
    |otherwise = c:b
    where up c'@(n',_) = if n == n' then c else c'

--remove :: Base -> String -> Base


main = do
    print $ search [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] "tutu"
    print $ search [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] "tata"
    
    print $ insert [("toto","toto@ulco.fr")] ("tata","tata@ulca.fr")
    print $ insert [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] ("tata","tata@nimpe.org")

    print $ update [("toto","toto@ulco.fr")] ("tata","tata@nimpe.org")
    print $ update [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] ("tata","tata@nimpe.org")
