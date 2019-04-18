;Задача 4
;Определите функциональный предикат (каждый пред список), который истинен в том и только в том случае, 
;когда, являющейся функциональным аргументом предикат "пред" истинен для всех элементов списка "список".

(defun forall-true (pred lst)
	(if (not (null(mapcan #'(lambda (el) (if (funcall pred el) nil (list t))) lst))) nil t)
)

;Тесты
;(forall-true 'atom '(1 2 3)) ;T
;(forall-true 'atom '(1 (2) 3)) ;NIL
