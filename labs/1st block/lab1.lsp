;Задача 3
;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.
(defun iter (el rep lst new-lst)
	(cond 
		((null lst) (reverse new-lst))
		(t (cond 
			((= el (car lst)) (iter el rep (cdr lst) (cons rep new-lst)))
			(t (iter el rep (cdr lst) (cons (car lst) new-lst))))
		)
	)
)

;Тесты
;(iter 1 2 `(1 1 1) `())
;(iter 1 2 `(2 2 2) `())
;(iter 1 2 `(1 2 3) `())
;(iter 1 2 `(3 4 5) `())