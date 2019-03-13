;Задача 26
;Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).
(defun split(lst)
	(cond
		((null (cddr lst)) (cons (list (car lst) (cadr lst)) (cddr lst)))
		(t (cons (list (car lst) (cadr lst)) (split (cddr lst))))
	)
)

;Тесты
;(split `(a b c d))
;(split `(1 2 3 4 5 6))