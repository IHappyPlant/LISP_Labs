--Задача 2
--Определите функцию, возвращающую последний элемент списка

get_last [el] = el
get_last lst = get_last (tail lst)

--Тесты
--get_last [1, 2, 3] -- 3
--get_last ['a', 'b', 'c'] -- 'c'