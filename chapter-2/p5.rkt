#lang sicp
(#%require racket/trace)

(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (cr x y c)
  (define (cr-iter x c)
    (let ((r (remainder x y))(s (/ x y)))
      (if (= r 0)
        (cr-iter s (+ c 1))
        c)))
  (cr-iter x c)
)

(define (car z)
  (cr z 2 0)
)

(define (cdr z)
  (cr z 3 0)
)

(display (cdr(cons 5 4)))
(cons 2 3)
(cr 108 2 0)
(cr-iter 108 0)
y = 2
r = 0 s = 54
(cr-iter 54 1)
r = 0 s = 27
(cr-iter 27 2)
r = 1