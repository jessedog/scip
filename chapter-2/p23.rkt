#lang sicp

(define (for-each proc items)
  (if (not (null? items))
      (begin
        (proc (car items))
        (for-each proc (cdr items)))))

(define a (list 1 2 4))
(for-each (lambda (x) (newline) (display x)) a)