--Задача 7
--Реализовать на языке Haskell функцию, заменяющую в исходном списке все вхождения заданного значения другим

el_replace _ _ [] = []
el_replace el rep (h:t)
    | h == el   = rep : el_replace el rep t
    | otherwise = h : el_replace el rep t

--Тесты
--el_replace 1 2 [1, 1, 3] -- [2,2,3]
--el_replace "a" "b" ["a", "c", "a", "d"] -- ["b","c","b","d"]