--Задача 9
--Реализовать на языке Haskell функцию, которая увеличивает элементы исходного списка в десять раз

increase_tenfold [] = []
increase_tenfold (h:t) = h * 10 : increase_tenfold t

--Тесты
--increase_tenfold [1, 2, 3, 4, 5] -- [10,20,30,40,50]