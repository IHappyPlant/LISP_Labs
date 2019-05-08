--Задача 3
--Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с чётными номерами

remove_even [el] = [el]
remove_even [first, second] = [first]
remove_even (h:t) = h : remove_even (tail t)

--Тесты
--remove_even [1, 2, 3] -- [1,3]
--remove_even [1, 2, 3, 4] -- [1,3]