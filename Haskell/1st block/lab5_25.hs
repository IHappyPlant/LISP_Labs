--Задача 25
--Определите функцию, удаляющую из списка каждый четный элемент

remove_even [last] = [last]
remove_even [first, second] = [first]
remove_even lst = (head lst) : remove_even (drop 2 lst)

--Тесты
--remove_even [1, 2, 3] -- [1, 3]
--remove_even [1, 2, 3, 4] -- [1, 3]