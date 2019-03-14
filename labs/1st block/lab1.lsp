;Задача 3
;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.
(defun iter (el rep lst)
	(cond 
		((null lst) nil)
		(t ((lambda (h tail)(cond 
			((eq el h) (cons rep (iter el rep tail)))
			(t (cons h (iter el rep tail))))) (car lst) (cdr lst))
		)
	)
)

;Тесты
;(iter 1 2 `(1 1 1))
;(iter 1 2 `(2 2 2))
;(iter 1 2 `(1 2 3))
;(iter 1 2 `(3 4 5))
