#lang sicp
(#%require "list-base.rkt")

(define x (list 1 2 3))
(define y (list 4 5 6))
(append x y)
(cons x y)
(list x y)
(cdr (cdr (cons x y)))
(cdr (cdr (list x y)))

(define (deep-reverse items)
  (define (iter a res)
    (if (null? a)
        res
        (iter (cdr a)
              (cons (if (pair? (car a))
                        (deep-reverse (car a))
                        (car a)) res))))
  (iter items '()))

(define a (list x y))
(deep-reverse a)