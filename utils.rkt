#lang racket

(define (square x)
  (* x x))

(define (cube x) (* x x x))

(define (inc x) (+ x 1))

(define (>= x y) (not (< x y)))

(define (average x y)
  (/ (+ x y) 2))

(provide (all-defined-out))