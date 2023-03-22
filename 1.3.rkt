#lang sicp

(define (>= a b)
  (or (> a b) (= a b)))
(define (selectTwo a b c)
  (define s1 (+ a b))
  (define s2 (+ a c))
  (define s3 (+ b c))
  (cond ((and (>= s1 s2) (>= s1 s3)) s1)
  ((and (>= s2 s1) (>= s2 s3)) s2)
  ((and (>= s3 s2) (>= s3 s1)) s3))
  )

(display (selectTwo 1 2 3))