;Задача 2
;Определите функцию, возвращающую последние q элементов списка
(defun get-length(lst cnt)
	(cond
		((null lst) cnt)
		(t (get-length (cdr lst) (+ cnt 1)))
	)
)

(defun cut-list(lst q)
	(cond
		((null lst) nil)
		((eq (get-length lst 0) q) lst)
		(t (cut-list (cdr lst) q))
	)
)

;Тесты
;(cut-list `(1 2 3 4 5) 2)
;(cut-list `(1 2 3 4 5) 5)