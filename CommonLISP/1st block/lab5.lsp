;Задача 26
;Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).
(defun split(lst)
	((lambda (first second rest) 
		(cond
			((null rest) (cons (list first second) rest))
			(t (cons (list first second) (split rest)))
		)
	) (car lst) (cadr lst) (cddr lst))
)

;Тесты
;(split `(a b c d)) ; ((A B) (C D)) 
;(split `(1 2 3 4 5 6)) ; ((1 2) (3 4) (5 6)) 
