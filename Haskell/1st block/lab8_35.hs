--Задача 35
--Определите функцию ПОДМНОЖЕСТВО, которая проверяет, является ли одно множество подмножеством другого.
--Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.

is_member _ [] = False
is_member el (h:t) = if el == h then True else is_member el t

is_subset [] _ = True
is_subset (h1:t1) set2 = if is_member h1 set2 then is_subset t1 set2 else False

is_proper_subset [] _ = False
is_proper_subset _ [] = False
is_proper_subset set1 set2 = not (is_subset set1 set2 && is_subset set2 set1)

--Тесты
--is_subset [1, 2, 3] [1, 2, 3, 4, 5] -- True
--is_subset [3, 1, 2] [1, 2, 3, 4, 5] -- True
--is_subset [1, 2, 3] [2, 3, 4, 5, 6] -- False
--is_proper_subset [] [1, 2, 3] -- False
--is_proper_subset [1, 2, 3] [1, 2, 3, 4, 5] -- True
--is_proper_subset [1, 2, 3, 4, 5] [1, 2, 3, 4, 5] -- False