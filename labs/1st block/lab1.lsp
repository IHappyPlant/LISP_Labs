;Задача 3
;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.
(defun iter (el rep lst)
	(cond 
		((null lst) nil)
		(t 
			((lambda (h rest)
				(cond 
					((eq el h) (cons rep rest))
					(t (cons h (iter el rep rest))))) 
			(car lst) (iter el rep (cdr lst)))
		)
	)
)

;Тесты
;(iter 1 2 `(1 1 1))
;(iter 1 2 `(2 2 2))
;(iter 1 2 `(1 2 3))
;(iter 1 2 `(3 4 5))
