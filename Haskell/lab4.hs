--Задача 4
--Реализовать на языке Haskell функцию, которая разделяет исходный список из целых чисел
--на два списка: список положительных чисел и список отрицательных чисел

split [] = []
split lst = [negatives lst] ++ [positives lst]
    where
        negatives [] = []
        negatives (h:t)
            | h <= 0    = h : negatives t
            | otherwise = negatives t
        positives [] = []
        positives (h:t)
            | h > 0     = h : positives t
            | otherwise = positives t

-- split [] = []
-- split (h:t)
--     | h <= 0    = h : split t
--     | otherwise = split t ++ [h]

--Тесты
--split [1, -1, 2, -2, 3, -3] -- [[-1,-2,-3],[1,2,3]]

--split [1, -1, 2, -2, 3, -3] -- [-1,-2,-3,3,2,1]