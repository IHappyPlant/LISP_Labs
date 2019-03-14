;Задача 3
;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.
(defun el-replace (el rep lst)
	(cond 
		((null lst) nil)
		(t 
			((lambda (first rest)
				(cond 
					((eq el first) (cons rep rest))
					(t (cons first rest)))
			) (car lst) (el-replace el rep (cdr lst)))
		)
	)
)

;Тесты
;(el-replace 1 2 `(1 1 1))
;(el-replace 1 2 `(2 2 2))
;(el-replace 1 2 `(1 2 3))
;(el-replace 1 2 `(3 4 5))
