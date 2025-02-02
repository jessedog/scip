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

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(provide (all-defined-out))