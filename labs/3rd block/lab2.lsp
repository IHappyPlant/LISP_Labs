;Задача 2
;Определите макрос (pop стек), который читает из стека верхний элемент, и меняет значение переменной стека

(defmacro my-pop (stack)
    `(let (first)
        (setq first (car ,stack))
        (setq stack (cdr ,stack))
        first
    )
)

(defun main ()
    (setq stack '(1 2 3))
    (list (my-pop stack) (my-pop stack) (my-pop stack) (my-pop stack))
)

;Тесты
;(main) ;(1 2 3 NIL)