;Задача 28
;Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).
(defun atom-count(lst cnt)
	(cond
		((null lst) cnt)
		((atom (car lst)) (atom-count (cdr lst) (+ cnt 1)))
		(t (atom-count (cdr lst) cnt))
	)
)

;Тесты
;(atom-count `(1 2 3 `(4 5)) 0)
;(atom-count `(1 `(a b c) 3 `(4 5)) 0)