#lang sicp
(#%require "../utils.rkt")
(#%require "p42-compose.rkt")

(define (repeat f n)
  (define (repeat-iter g f n)
    (cond ((> n 1) (repeat-iter (compose g f) f (- n 1)))
          ((= n 1) g)
          (else (lambda (x) x))
    ))
  (repeat-iter f f n)  
)

; (display ((repeat inc 3) 1))
(#%provide repeat)