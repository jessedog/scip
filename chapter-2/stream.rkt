#lang sicp

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence))
         (cons (car sequence) (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))
;(filter odd? (list 1 2 3 4 5))

(define (accmulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accmulate op initial (cdr sequence)))))
;(accmulate + 0 (list 1 2 3 4 5))

(#%provide map filter accmulate)