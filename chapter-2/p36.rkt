#lang sicp
(#%require "./stream.rkt")

(define (accmulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accmulate op init (map car seqs))
            (accmulate-n op init (map cdr seqs)))))

(accmulate-n + 0 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))