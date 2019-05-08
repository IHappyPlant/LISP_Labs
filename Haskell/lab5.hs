--Задача 5
--Реализовать на языке Haskell функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним

my_reduce [] = []
my_reduce [el] = [el]
my_reduce (h:t) 
    | h == head t = my_reduce $ h:(tail t)
    | otherwise   = h:my_reduce t

--Тесты
--my_reduce [1, 1, 2, 3, 4] -- [1,2,3,4]
--my_reduce [1, 1, 1, 2, 3, 4] -- [1,2,3,4]
--my_reduce [1, 2, 2, 3, 1, 4] -- [1,2,3,1,4]