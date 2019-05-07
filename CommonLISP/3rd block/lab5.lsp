;Задача 5
;Определите в виде макроса форму (repeat e until p) паскалевского типа

(defmacro repeat (e until p)
    `(if ,p ,e (progn ,e (repeat ,e until ,p)))
)

;Тесты
;(setq lst '(1 2 3 (a b c) 4 5))
;(repeat (progn (print (car lst)) (setq lst (cdr lst))) until (null lst)) ;1 2 3 (A B C) 4 5 NIL NIL