#lang sicp
(#%require "../utils.rkt")

(define (accmulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accmulate op initial (cdr sequence)))))

(define (map p sequence)
  (accmulate (lambda (x y) (cons (p x) y)) nil sequence))

(map square (list 1 2 3 4 5))

(define (append seq1 seq2)
  (accmulate cons seq2 seq1))

(append (list 1 2 3) (list 4 5))

(define (length sequence)
  (accmulate (lambda (x y) (+ 1 y)) 0 sequence))

(length (list 1 2 3 4))
