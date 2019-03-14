;Задача 18
;Определите предикат, проверяющий, является ли аргумент одноуровневым списком.
(defun check(lst)
	(cond
		((null lst) t)
		((not (atom (car lst))) nil)
		(t (check (cdr lst)))
	)
)

;Тесты
;(check `(1 2 3))
;(check `(`(1 2) 3 4))
;(check `(1 2 3 `(4 5)))
