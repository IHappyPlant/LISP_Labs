;Задача 46
;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, 
;обозначающего это лицо. 
;Напишите функцию (родители x), которая возвращает в качестве значения родителей, 
;и предикат (сестры-братья x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, 
;родные или с одним общим родителем.
(defun setprop(person mother father)
	(setf (get person `mother) mother)
	(setf (get person `father) father)
)

(defun parents(person)
	(list (get person `mother) (get person `father))
)

(defun siblings(person1 person2)
	(cond
		((eq (get person1 `mother) (get person2 `mother)) t)
		((eq (get person1 `father) (get person2 `father)) t)
		(t nil)
	)
)

(defun main(person1 person2 parents1 parents2)
	(setprop person1 (car parents1) (cadr parents1))
	(setprop person2 (car parents2) (cadr parents2))
	(print(parents person1))
	(print(parents person2))
	(siblings person1 person2)
)