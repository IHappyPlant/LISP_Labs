;Задача 6
;Определите фильтр (удалить-если пред список), удаляющий из списка "список" все элементы,
;которые обладают свойством, наличие которого проверяет предикат "пред".

(defun rem-if (pred lst)
	((lambda (first rest)
		(cond
			((null lst) nil)
			((funcall pred (symbol-plist first)) (rem-if pred rest))
			(t (cons first (rem-if pred rest)))
		)
	)(car lst) (cdr lst))
)

(defun find-prop-in-list (prop-list)
	(cond
		((null prop-list) nil)
		((eq (car prop-list) 'target-prop) t)
		(t (find-prop-in-list (cddr prop-list)))
	)
)

(defun test ()
	(setf (get 'el1 'target-prop) 1)
	(setf (get 'el4 'target-prop) 1)
	(setf (get 'el5 'target-prop) 1)
	(rem-if 'find-prop-in-list '(el1 el2 el3 el4 el5))
)

;Тесты
;(test) ;(EL2 EL3)