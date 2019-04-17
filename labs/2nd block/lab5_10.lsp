;Задача 10
;Напишите генератор, порождающий последовательность (a), (b a), (a b a), (b a b a), ...

(defun a-b-generator ()
	(let ((seq nil))
		(lambda ()
			(cond
				((or (null seq) (eq 'b (car seq))) (setq seq (cons 'a seq)))
				(t (setq seq (cons 'b seq)))
			)
		)
	)
)

(defun main ()
	(setq g1 (a-b-generator))
	(setq g2 (a-b-generator))
	(cons 
		((lambda () (funcall g1) (funcall g1) (funcall g1) (funcall g1) (funcall g1)))
		(list ((lambda () (funcall g2) (funcall g2) (funcall g2))))
	)
)

;Тесты
;(main) ;((A B A B A) (A B A))
