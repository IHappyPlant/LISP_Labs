;Задача 25
;Определите функцию, удаляющую из списка каждый четный элемент.
(defun remove-even(lst)
	((lambda (first rest) 
		(cond
			((null rest) (cons first rest))
			(t (cons first (remove-even rest )))
		)
		) (car lst) (cddr lst)
	)
)

;Тесты
;(remove-even `(1 2 3))
;(remove-even `(1 2 3 4 5 6))
