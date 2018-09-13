 main = do
    print $ 'Z' < 'a'
    print $ "abc" <= "ab"
    print $ "abc" >= "ac"
    print $ 1 + 2 * 3
    print $ 5.0 - 4.2 / 2.1
    print $ 3 > 4 || 5 < 6 && not (7 /= 8)
    print $ if 6 < 10 then 6.0 else 10.0

