# Специальные языки программирования  
Вариант: 6  
Задачи первого блока: 2, 3, 15, 18, 25, 26, 28, 35, 45, 46
## Навигация  
* [Первый блок](#основы-языка-lisp)
	* [Задача 2](#задача-2)
## Основы языка LISP  
### Задача 2  
Условие: Определите функцию, возвращающую последние q элементов списка  
Код:  
````
(defun get-length(lst cnt)
	(cond
		((null lst) cnt)
		(t (get-length (cdr lst) (+ cnt 1)))
	)
)

(defun cut-list(lst q)
	(cond
		((null lst) nil)
		((eq (get-length lst 0) q) lst)
		(t (cut-list (cdr lst) q))
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.2.PNG)  

