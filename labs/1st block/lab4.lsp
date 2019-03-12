;Задача 25
;Определите функцию, удаляющую из списка каждый четный элемент.
(defun del(lst new-lst)
	(cond
		((null (cddr lst)) (reverse (cons (car lst) new-lst)))
		(t (del (cddr lst) (cons (car lst) new-lst)))
	)
)

;Тесты
;(del `(1 2 3) `())
;(del `(1 2 3 4 5 6) `())