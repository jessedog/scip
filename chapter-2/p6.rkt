#lang sicp

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

; (define (+ n m)
;   (lambda (f) (lambda (x) (m ((n f) x)))))

(define (a x) (+ x 1))
(display 10)
(newline)
(display (((add-1 two) a) 4))
(newline)
; (((add-1 two) a) 4)
; ((lambda (x) (a (two a) x)) 4)
; (a ((two a) 4))
; (a ((lambda (x) (a (a x))) 4))
; (a (a (a 4)))
; 7


