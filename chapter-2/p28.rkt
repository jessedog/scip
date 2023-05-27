#lang sicp
(#%require "list-base.rkt")
(#%require racket/trace)

(define x (list (list 1 2) (list 3 4)))

(define (fringe items)
  (define (iter remainder)
    (cond ((null? remainder) '())
          ((not(pair? remainder)) (list remainder))
          (else (append (fringe (car remainder)) (fringe (cdr remainder))))
        ))
  (trace iter)
  (iter items))

(fringe x)
;(car (car x))