#lang sicp
(#%require racket/trace)

(define (make-mobile left right)
  (list left right))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (make-branch length structure)
  (list length structure))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

(define (hangs-another-mobile? branch)
  (pair? (branch-structure branch)))

(define (branch-weight branch)
  (if (hangs-another-mobile? branch)
      (branch-weight (branch-structure branch))
      (branch-structure branch)))

(define x (make-branch 2 (make-branch 3 4)))
(hangs-another-mobile? x)
(trace branch-weight)
(branch-weight x)

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (balance mobile)
  (define (iter a)
    (cond ((null? a) 0)
          ((not (pair? a)) a)
          (else (+ (iter (left-branch a))
                   (iter (right-branch a))))))
  (iter mobile))
(car (list 2 (list 3 4)))
;(define x (make-mobile (make-branch 1 2) 3 ))
;(total-weight x)