--Задача 12
--Реализовать на языке Haskell функцию ПЕРЕСЕЧЕНИЕ, формирующую пересечение двух множеств

intersect [] _ = []
intersect (h1:t1) set2 
    | member h1 set2 = h1 : intersect t1 set2
    | otherwise      = intersect t1 set2
    where
        member _ [] = False
        member el (h:t) 
            | el == h   = True 
            | otherwise = member el t

--Тесты
--intersect [1, 2, 3, 4, 5] [1, 2, 4, 6] -- [1,2,4]
--intersect ["a", "b", "c"] ["e", "a", "f"] -- ["a"]