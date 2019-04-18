;Задача 4
;Определите функциональный предикат (каждый пред список), который истинен в том и только в том случае, 
;когда, являющейся функциональным аргументом предикат "пред" истинен для всех элементов списка "список".

(defun forall-true (pred lst)
	((lambda (first rest)
		(cond
			((null rest) (funcall pred first))
			((funcall pred first) (forall-true pred rest))
			(t nil)
		)
	)(car lst) (cdr lst))
)

;Тесты
;(forall-true 'atom '(1 2 3)) ;T
;(forall-true 'atom '(1 (2) 3)) ;NIL

(defun forall-true (pred lst)
	(mapcan #'(lambda (el) (funcall pred el)) lst)
)

;Тесты
;(print(forall-true 'atom '(1 2 3))) ;T
;(print(forall-true 'atom '(1 (2) 3))) ;T
