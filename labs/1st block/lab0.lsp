;Задача 2
;Определите функцию, возвращающую последние q элементов списка
(defun get-length(lst)
	(cond
		((null lst) 0)
		(t (+ 1 (get-length (cdr lst))))
	)
)

(defun cut-list(lst q)
	(cond
		((null lst) nil)
		((eq (get-length lst) q) lst)
		(t (cut-list (cdr lst) q))
	)
)

;Тесты
;(cut-list `(1 2 3 4 5) 2)
;(cut-list `(1 2 3 4 5) 5)
