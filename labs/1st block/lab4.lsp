;Задача 25
;Определите функцию, удаляющую из списка каждый четный элемент.
(defun remove-even(lst)
	((lambda (head tail) 
		(cond
			((null tail) (cons head tail))
			(t (cons head (remove-even tail )))
		)
		) (car lst) (cddr lst)
	)
)

;Тесты
;(remove-even `(1 2 3))
;(remove-even `(1 2 3 4 5 6))
