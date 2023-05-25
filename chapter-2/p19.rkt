#lang sicp
(#%require "list-base.rkt")

(define us-conis (list 50 25 10 5 1))

(define uk-conis (list 100 50 20 10 5 2 1 0.5))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else (+ (cc amount
                     (except-first-denomination coin-values))
                 (cc (- amount
                        (first-denomination coin-values))
                     coin-values)))))

(define (no-more? items) (null? items))
(define (except-first-denomination items)
  (cdr items))
(define (first-denomination items) (car items))

(display (cc 100 (reverse us-conis)))
(newline)
(display (cc 100 us-conis))