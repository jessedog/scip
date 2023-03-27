#lang racket

(define (square x)
  (* x x))

(define (cube x) (* x x x))

(define (inc x) (+ x 1))

(define (>= x y) (not (< x y)))

(define (average x y)
  (/ (+ x y) 2))

(define (average-damp f)
    (lambda (x)
        (average x 
                 (f x))))

(provide (all-defined-out))