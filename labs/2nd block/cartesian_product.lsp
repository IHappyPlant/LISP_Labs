;Декатрово произведение lst1 и lst2
(defun cartesian-product (lst1 lst2)
	(mapcar #'(lambda (el) (mapcan #'(lambda (el2) (list el el2)) lst2)) lst1)
)

;Тесты
;(cartesian-product `(a b c) `(1 2 3)) ;((A 1 A 2 A 3) (B 1 B 2 B 3) (C 1 C 2 C 3))
;(cartesian-product `(1 2) `(a b c)) ;((1 A 1 B 1 C) (2 A 2 B 2 C))