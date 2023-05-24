#lang sicp
(#%require "p7.rkt")
(#%require "p12.rkt")

(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (print-interval (div-interval one r1))
    (print-interval (div-interval r1 r1))
    (div-interval one (add-interval (div-interval one r1) (div-interval one r2)))))


(define (test)
  (let ((r1 (make-interval 2 4))
        (r2 (make-interval 2 4)))
    (print-interval (par1 r1 r2))
    (print-interval (par2 r1 r2))))
(test)