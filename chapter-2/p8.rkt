#lang sicp
(#%require "p7.rkt")

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y))
                 (- (upper-bound x) (upper-bound y))))

(define a (make-interval 1 4))
(define b (make-interval 3 5))
(display (sub-interval b a))

(#%provide sub-interval)