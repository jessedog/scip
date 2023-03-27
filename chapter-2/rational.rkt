#lang sicp
(#%require "../utils.rkt")

(define (make-rat n d) 
  (let ((g (gcd n d)))
    (cons ( / n g) (/ d g))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(#%provide all-defined-out)