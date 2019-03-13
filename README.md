# Специальные языки программирования  
Вариант: 6  
Задачи первого блока: 2, 3, 15, 18, 25, 26, 28, 35, 45, 46
## Навигация  
* [Первый блок](#основы-языка-lisp)
	* [Задача 2](#задача-2)
	* [Задача 3](#задача-3)
	* [Задача 15](#задача-15)
	* [Задача 18](#задача-18)
	* [Задача 25](#задача-25)
	* [Задача 26](#задача-26)
	* [Задача 28](#задача-28)
	* [Задача 35](#задача-35)
	* [Задача 45](#задача-45)
	* [Задача 46](#задача-46)
## Основы языка LISP  
### Задача 2  
Условие: Определите функцию, возвращающую последние q элементов списка.  
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
### Задача 3  
Условие: Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.  
Код:  
````
(defun iter (el rep lst)
	(cond 
		((null lst) nil)
		(t (cond 
			((= el (car lst)) (cons rep (iter el rep (cdr lst))))
			(t (cons (car lst) (iter el rep (cdr lst)))))
		)
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.3.PNG)  
### Задача 15  
Условие: Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.  
Код:  
````
(defun product (x y) 
	(cond 
		((null x) 0)
		(t (+ (* (car x) (car y)) (product (cdr x) (cdr y))))
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.15.PNG)  
### Задача 18  
Условие: Определите предикат, проверяющий, является ли аргумент одноуровневым списком.  
Код:  
````
(defun check(lst)
	(cond
		((null lst) t)
		((eq nil (atom (car lst))) nil)
		(t (check (cdr lst)))
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.18.PNG)  
### Задача 25  
Условие: Определите функцию, удаляющую из списка каждый четный элемент.  
Код:  
````
(defun del(lst)
	(cond
		((null (cddr lst)) (cons (car lst) (cddr lst)))
		(t (cons (car lst) (del (cddr lst) )))
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.25.PNG)  
### Задача 26  
Условие: Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).  
Код:  
````
(defun split(lst)
	(cond
		((null (cddr lst)) (cons (list (car lst) (cadr lst)) (cddr lst)))
		(t (cons (list (car lst) (cadr lst)) (split (cddr lst))))
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.26.PNG)  
### Задача 28  
Условие: Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).  
Код:  
````
(defun atom-count(lst cnt)
	(cond
		((null lst) cnt)
		((atom (car lst)) (atom-count (cdr lst) (+ cnt 1)))
		(t (atom-count (cdr lst) cnt))
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.28.PNG)  
### Задача 35  
Условие: Определите функцию ПОДМНОЖЕСТВО, которая проверяет, является ли одно множество подмножеством другого.  
Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.  
Код:  
````
(defun is-member(el lst)
	(cond
		((null lst) nil)
		((eq (car lst) el) t)
		(t (is-member el (cdr lst)))
	)
)

(defun is-subset(set1 set2)
	(cond
		((null set1) t)
		((is-member (car set1) set2) (is-subset (cdr set1) set2))
		(t nil)
	)
)

(defun get-length(lst cnt)
	(cond
		((null lst) cnt)
		(t (get-length (cdr lst) (+ cnt 1)))
	)
)

(defun is-proper-subset(set1 set2)
	(cond
		((null set1) nil)
		((is-subset set1 set2) (cond
			((eq (get-length set1 0) (get-length set2 0)) nil)
			(t t)
		))
		(t nil)
	)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.35.PNG)  
### Задача 45  
Условие: Предположим, что у имени города есть свойства x и y, которые содержат координаты места нахождения города относительно некоторого начала координат.  
Напишите функцию (расстояние a b) вычисляющую расстояние между городами a и b.  
Код:  
````
(defun setprop(city-name x y)
	(setf (get city-name `x) x)
	(setf (get city-name `y) y)
)

(defun sqr(x)
	(* x x)
)

(defun dist(a b)
	(sqrt (+ (sqr (- (get a `x) (get b `x))) (sqr (- (get a `y) (get b `y)))))
)

(defun main(city1 city2 x1 y1 x2 y2)
	(setprop city1 x1 y1)
	(setprop city2 x2 y2)
	(dist city1 city2)
)
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.45.PNG)  
### Задача 46  
Условие: Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо.  
Напишите функцию (родители x), которая возвращает в качестве значения родителей, и предикат (сестры-братья x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.  
Код:  
````
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
````  
Пример работы:  
![](https://github.com/IHappyPlant/LISP_Labs/blob/master/img/1.46.PNG)  
[В начало](#специальные-языки-программирования)