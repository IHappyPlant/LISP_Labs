;Задача 28
;Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).
(defun atom-count(lst)
	((lambda (first rest) 
		(cond
			((null lst) 0)
			((atom first) (+ 1 (atom-count rest)))
			(t (atom-count rest))
		)
	)(car lst) (cdr lst))
	
)

;Тесты
;(atom-count `(1 2 3 `(4 5)))
;(atom-count `(1 `(a b c) 3 `(4 5)))
