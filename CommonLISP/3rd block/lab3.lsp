;Задача 3
;Определите лисповскую форму (if условие p q) в виде макроса

(defmacro my-if (my-cond p q)
    `(if ,my-cond ,p ,q)
)

;Тесты
;(my-if (> 1 2) 't nil) ;NIL
;(my-if (> 2 1) 't nil) ;T
;(my-if (atom '(1)) t nil) ;NIL