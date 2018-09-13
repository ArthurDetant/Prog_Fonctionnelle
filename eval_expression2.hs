Prelude> [1,2,3] !! ([1,2,3] !! 1)
3

Prelude> head [1,2,3]
1

Prelude> tail [1,2,3]
[2,3]

Prelude> "a":["b","c"]
["a","b","c"]

Prelude> "abc" ++ "d"
"abcd"

Prelude> tail "abc" ++ "d"
"bcd"

Prelude> head "abc" : "d"
"ad"

Prelude> ([1,2,3] !! 2 : []) ++ [3,4]
[3,3,4]

Prelude> [3,2] ++ [1,2,3] !! head [1,2] : []
[3,2,2]
