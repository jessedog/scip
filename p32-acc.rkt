#lang sicp
(#%require "square.rkt")
(#%require "prime.rkt")
(#%require racket/trace)

(define (filter-accumulate combiner valid? null-value term a next b)
  (define (iter a res)
    (define f
      (if (valid? a)
          (combiner (term a) res)
          res
      )
    )
    (if (> a b)
        res
        (iter (next a) f)
    )
  )
  (trace iter)
  (iter a null-value)
)

(display (filter-accumulate + prime? 0 (lambda (x) x) 1 inc 5))
(newline)

(define (accumulate1 combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))
  )
)

(define (accumulate combiner null-value term a next b)
  (define (iter a res)
    (if (> a b)
        res
        (iter (next a) (combiner (term a) res))
    )
  )
  (iter a null-value)
)

(define (product term a next b)
  (accumulate * 1 term a next b)
)

(define (sum term a next b)
  (accumulate + 0 term a next b)
)

(display (product (lambda (x) x) 1 inc 4))
(newline)
(display (sum (lambda (x) x) 1 inc 10))


