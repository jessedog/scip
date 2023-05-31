#lang sicp
(#%require "p38.rkt")
(#%require "stream.rkt")
(#%require "../utils.rkt")

(define (reverse-1 seq)
  (accmulate (lambda (x y) (append y (list x))) nil seq))
(reverse-1 (list 1 2 3 4 5))

(define (reverse-2 seq)
  (fold-left (lambda (x y) (cons y x)) nil seq))
(reverse-2 (list 1 2 3 4 5))
