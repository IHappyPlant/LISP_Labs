;Определите функцию, которая возвращает в качестве значения свой вызов

(defun self (&rest arg)
	(list 'self arg)
)

;Тесты
;(self 2) ;(SELF 2)
;(self 10) ;(SELF 10)
;(self '(1 2 3)) ;(SELF (1 2 3)) 
;(self 3 4 5) ;(SELF (3 4 5))
