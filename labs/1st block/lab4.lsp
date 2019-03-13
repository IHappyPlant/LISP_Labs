;Задача 25
;Определите функцию, удаляющую из списка каждый четный элемент.
(defun del(lst)
	(cond
		((null (cddr lst)) (cons (car lst) (cddr lst)))
		(t (cons (car lst) (del (cddr lst) )))
	)
)

;Тесты
;(del `(1 2 3))
;(del `(1 2 3 4 5 6))