;Задача 4
;Определите в виде макроса форму (fif тест отр нуль полож)

(defmacro fif (test neg zero pos)
    `(if (<= ,test 0)
        (if (< ,test 0) ,neg ,zero)
        ,pos 
    )
)

;Тесты
;(fif -1 'neg 'zero 'pos) ;NEG
;(fif 0 'neg 'zero 'pos) ;ZERO
;(fif 1 'neg 'zero 'pos) ;POS