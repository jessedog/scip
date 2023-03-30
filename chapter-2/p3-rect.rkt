#lang sicp
(#%require "point.rkt")

(define (make-rect lb rt)
  (cons lb rt))
(define (left-bottom-rect r)
  (car r))
(define (right-top-rect r)
  (cdr r))
(define (lenght-rect r)
  (- (x-point (right-top-rect r)) (x-point (left-bottom-rect r))))
(define (width-rect r)
  (- (y-point (right-top-rect r)) (y-point (left-bottom-rect r))))

(define (premiter-rect r)
  (* 2 (+ (lenght-rect r) (width-rect r))))

(define (area-rect r)
  (* (lenght-rect r) (width-rect r)))

(define p1 (make-point 2 1))
(define p2 (make-point 5 3))
(define r (make-rect p1 p2))
(display (premiter-rect r))
(newline)
(display (area-rect r))