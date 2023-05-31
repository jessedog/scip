#lang sicp

(define x (list (list 1 2) (list 3 4)))
(define (fringe items)
  (define (iter a res)
    (if (null? a)
        res
        (iter (cdr)))))
