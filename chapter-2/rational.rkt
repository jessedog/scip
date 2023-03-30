#lang racket
(#%require "../utils.rkt")

(define (make-rat n d) 
  (let ((g (gcd n d)))
    (let ((n1 (/ n g)) (d1 (/ d g)))
      (if (< d1 0)
        (cons (- n1) (- d1))
        (cons n1 d1)
      )
    )))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(provide (all-defined-out))