;Задача 45
;Предположим, что у имени города есть свойства x и y,
;которые содержат координаты места нахождения города относительно некоторого начала координат.
;Напишите функцию (расстояние a b) вычисляющую расстояние между городами a и b
(defun setprop(city-name x y)
	(setf (get city-name `x) x)
	(setf (get city-name `y) y)
)

(defun sqr(x)
	(* x x)
)

(defun dist(a b)
	(sqrt (+ (sqr (- (get a `x) (get b `x))) (sqr (- (get a `y) (get b `y)))))
)

(defun main(city1 city2 x1 y1 x2 y2)
	(setprop city1 x1 y1)
	(setprop city2 x2 y2)
	(dist city1 city2)
)

;Тесты
;(main `city1 `city2 0 0 10 10)
;(main `city1 `city2 0 0 10 0)