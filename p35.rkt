#lang sicp
(#%require "fixed-point.rkt")

(define (golden-section)
  (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0))

(display (golden-section))