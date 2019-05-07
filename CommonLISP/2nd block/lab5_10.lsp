;Задача 10
;Напишите генератор, порождающий последовательность (a), (b a), (a b a), (b a b a), ...

(defun a-b-generator ()
	(let 
		((seq nil) (next-el 'b))
		(lambda ()
			(if (eq next-el 'b) 
				(setq next-el 'a)
				(setq next-el 'b)
			)
			(setq seq (cons next-el seq))
		)
	)
)

(defun main ()
	(setq g1 (a-b-generator))
	(setq g2 (a-b-generator))
	(list 
		(funcall g1)
		(funcall g1)
		(funcall g1)
		(funcall g2)
		(funcall g1)
		(funcall g2)
	)
)

;Тесты
;(main) ;((A) (B A) (A B A) (A) (B A B A) (B A)) 
