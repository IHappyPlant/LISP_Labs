;Задача 14
;Напишите функцию, которая возвращает форму своего определения (defun)

(defun self (arg)
	(list 'defun 'self (list'arg))
)

;Тесты
;(self 1) ;(DEFUN SELF (ARG)) 
