;Задача 2
;Определите функцию, возвращающую последний элемент списка
(defun cut-list(lst)
	(cond
		((null lst) nil)
		((null (cdr lst)) (car lst))
		(t (cut-list (cdr lst)))
	)
)

;Тесты
;(cut-list `(1 2 3 4 5)) ; 5

