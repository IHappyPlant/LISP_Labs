;Задача 35
;Определите функцию ПОДМНОЖЕСТВО, которая проверяет, является ли одно множество подмножеством другого. 
;Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.
(defun is-member(el lst)
	(cond
		((null lst) nil)
		((eq (car lst) el) t)
		(t (is-member el (cdr lst)))
	)
)

(defun is-subset(set1 set2)
	(cond
		((null set1) t)
		((is-member (car set1) set2) (is-subset (cdr set1) set2))
		(t nil)
	)
)

(defun is-proper-subset(set1 set2)
	(cond
		((null set1) nil)
		((is-subset set1 set2) (cond
			((is-subset set2 set1) nil)
			(t t)
		))
		(t nil)
	)
)

;Тесты
;(is-subset `(1 2 3) `(1 2 3 4 5))
;(is-subset `(3 1 2) `(1 2 3 4 5))
;(is-subset `(1 2 3) `(2 3 4 5 6))
;(is-proper-subset `() `(1 2 3 4 5))
;(is-proper-subset `(1 2 3) `(1 2 3 4 5))
;(is-proper-subset `(1 2 3 4 5) `(1 2 3 4 5))
