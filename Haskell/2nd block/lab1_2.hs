--Задача 2
--Определите функционал (maplist fn список) для одного списочного аргумента

maplist _ [] = []
maplist fn lst = fn lst : maplist fn (tail lst)

--Тесты
--maplist (\x -> 1 + head x) [1, 2, 3] -- [2, 3, 4]