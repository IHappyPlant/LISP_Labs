;Задача 26
;Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).
(defun split(lst new-lst)
	(cond
		((null (cddr lst)) (reverse (cons (list (car lst) (cadr lst)) new-lst)))
		(t (split (cddr lst) (cons (list (car lst) (cadr lst)) new-lst)))
	)
)

;Тесты
;(split `(a b c d) `())
;(split `(1 2 3 4 5 6) `())