#lang sicp
(#%require "p7.rkt")
(require racket/trace)

(define (percent n p) (* n (/ p 100.0)))

(define (make-center-percent c p)
  (let ((width (percent c p)))
    (make-interval (- c width) (+ c width))
  ))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i))))

; (print-interval (make-center-percent 100 1))
