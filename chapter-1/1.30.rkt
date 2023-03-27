#lang sicp
(#%require "square.rkt")

(define (sum1 term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))
  )
)

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))
    )
  )
  (iter a 0)
)

(display (sum1 cube 1 inc 3))
(newline)
(display (sum cube 1 inc 3))