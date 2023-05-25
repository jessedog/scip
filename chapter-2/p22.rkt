#lang sicp
(#%require "../utils.rkt")
(#%require "list-base.rkt")

(define (square-list-1 items)
  (define (iter things answer)
    (if (null? things)
      (reverse answer)
      (iter (cdr things)
            (cons (square (car things))
                  answer))))
  (iter items nil))

(define (square-list-2 items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons answer
                  (square (car things))))))
  (iter items nil))


(square-list-1 (list 1 2 3))
(square-list-2 (list 1 2 3))
