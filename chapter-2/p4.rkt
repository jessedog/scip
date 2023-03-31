#lang sicp

(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

(cons 1 2)

(car (cons 1 2))
((lambda (p q) p) x y)
(p)

