;Задача 1
;Определите макрос, который возвращает свой вызов

(defmacro self (&rest args)
    `(quote (self ,@args))
)

;Тесты
;(self 1) ;(SELF 1)
;(self (* 2 (+ 2 3))) ;(SELF (* 2 (+ 2 3)))
;(self a b (c)) ;(SELF A B (C))