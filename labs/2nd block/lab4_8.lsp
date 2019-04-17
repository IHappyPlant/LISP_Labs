;Задача 8
;Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...

(defun n-n-generator()
	(let ((num 0))
		(lambda () (setq num (+ num 1)))
	)
)

(defun main ()
	(setq g1 (n-n-generator))
	(setq g2 (n-n-generator))
	(list (funcall g1) (funcall g1) (funcall g1) (funcall g2) (funcall g1) (funcall g2))
)


;Тесты
;(main) ;(1 2 3 1 4 2)