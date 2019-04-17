;Применение symbol-function элемента к его же sybmol-value
(defun f (&rest (args '(1)))
    (mapcar #'(lambda (el) (+ el 4)) args)
)

(setq f '(1 2 3 4 5 6))

;Тесты
;(apply #'f f) ;(5 6 7 8 9 10)