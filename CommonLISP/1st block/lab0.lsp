;Задача 2
;Определите функцию, возвращающую последний элемент списка
(defun cut-list(lst)
	((lambda (first rest)
		(cond
			((null lst) nil)
			((null rest) first)
			(t (cut-list rest))
		)
	) (car lst) (cdr lst))
		
)

;Тесты
;(cut-list `(1 2 3 4 5)) ; 5

