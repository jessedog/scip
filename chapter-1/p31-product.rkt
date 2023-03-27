#lang sicp
(#%require "square.rkt")

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))
    )
  )
  (iter a 1)
)

(define (product1 term a next b)
  (if (> a b)
      1
      (* (term a) (product1 term (next a) next b))
  )
)

(define (factorial n)
  (define (f x) x)
  (product1 f 1 inc n)
)
(display (factorial 6))
(newline)

(define (pi n)
  (define (next x) (+ x 2))
  (define (numerator n)
    (* (product square 4 next (- n 2)) 2 n)
  )
  (define (denominator n)
    (* (product square 3 next (- n 1)))
  )
  (* (exact->inexact (/ (numerator n) (denominator n))) 4)
)
(display (pi 1000))
