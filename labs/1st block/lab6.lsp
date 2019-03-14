;Задача 28
;Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).
(defun atom-count(lst)
	(cond
		((null lst) 0)
		((atom (car lst)) (+ 1 (atom-count (cdr lst))))
		(t (atom-count (cdr lst)))
	)
)

;Тесты
;(atom-count `(1 2 3 `(4 5)))
;(atom-count `(1 `(a b c) 3 `(4 5)))
