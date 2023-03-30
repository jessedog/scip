#lang sicp
(#%require "../utils.rkt")
(#%require "point.rkt")

(define (make-segment p1 p2)
  (cons p1 p2))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))

(define (mid-point s)
  (make-point 
    (average (x-point (start-segment s)) (x-point (end-segment s)))
    (average (y-point (start-segment s)) (y-point (end-segment s)))))


(define p1 (make-point 2 2))
(define p2 (make-point 6 4))
(define s1 (make-segment p1 p2))
; (print-point (mid-point s1))
(#%provide make-segment start-segment end-segment mid-point)