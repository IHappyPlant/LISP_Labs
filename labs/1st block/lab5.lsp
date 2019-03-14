;Задача 26
;Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).
(defun split(lst)
	((lambda (pair rest) 
		(cond
			((null rest) (cons pair rest))
			(t (cons pair (split rest)))
		)
	) (list (car lst) (cadr lst)) (cddr lst))
)

;Тесты
;(split `(a b c d))
;(split `(1 2 3 4 5 6))