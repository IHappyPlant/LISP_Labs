;Определите функцию, которая возвращает в качестве значения свой вызов

(defun self (arg)
	(function self (lambda () (eval arg)))
)

;Тесты
;(self 1) ;#<FUNCTION SELF NIL (EVAL ARG)>