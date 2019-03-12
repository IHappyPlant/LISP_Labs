;Задача 18
;Определите предикат, проверяющий, является ли аргумент одноуровневым списком.
(defun check(lst)
	(cond
		((eq nil (atom (car lst))) "False")
		((null lst) "True")
		(t (check (cdr lst)))
	)
)

;Тесты
;(check `(1 2 3))
;(check `(`(1 2) 3 4))
;(check `(1 2 3 `(4 5)))