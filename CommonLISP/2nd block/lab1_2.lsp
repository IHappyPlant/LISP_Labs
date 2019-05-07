;Задача 2
;Определите функционал (maplist fn список) для одного списочного аргумента

(defun my-maplist (fn lst)
	(cond
		((null lst) nil)
		(t (cons (funcall fn lst) (my-maplist fn (cdr lst))))
	)
)

;Тесты
;(my-maplist 'print '(1 2 3)) ;(1 2 3) (2 3) (3) ((1 2 3) (2 3) (3))
;(my-maplist #'(lambda (el) (+ (car el) 1)) '(1 2 3)) ;(2 3 4)