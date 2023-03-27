#lang sicp
(#%require "p43-repeat.rkt")
(#%require "utils.rkt")

(define dx 0.00001)

(define (smooth f)
  (lambda (x) (/ (+ (f x) (f (+ x dx)) (f (- x dx))) 3.0)))

(display ((smooth square) 5))
(newline)

(define (smooth-n-times f n)
  (if (= n 0) f
      (smooth-n-times (smooth f) (- n 1))
  )
)
(display ((smooth-n-times square 10) 5))
(newline)

(define (repeat-smooth f n)
    (let ((n-times-smooth (repeat smooth n)))
        (n-times-smooth f)))

(display ((repeat-smooth square 10) 5))