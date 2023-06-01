#lang sicp
(#%require "./stream.rkt")

(define (fold-left op inital sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter inital sequence))

(define (fold-right op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-right op initial (cdr sequence)))))


(fold-right / 1 (list 1 2 3))
(fold-left / 1 (list 1 2 3))

(#%provide fold-left fold-right)
