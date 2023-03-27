#lang sicp
(#%require "../utils.rkt")

(define (compose f g)
  (lambda (x) (f (g x))))

; (display ((compose square inc) 4))

(#%provide compose)