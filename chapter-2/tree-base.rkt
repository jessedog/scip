#lang sicp

(define (count-levaes x)
  (cond ((null? x ) 0)
        ((not (pair? x)) 1)
        (else (+ (count-levaes (car x))
                 (count-levaes (cdr x))))))

(define t (cons (list 1 2) (list 3 4 5)))
(count-levaes t)
