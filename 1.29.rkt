#lang sicp
(#%require "square.rkt")
(#%require racket/trace)



(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))
  )
)
; 求定积分
(define (integral f a b dx)
  (define (add-dx x) (+ x dx)) 
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx
  )
)
(display (integral cube 0 1 0.001))
(newline)

; 辛普森规则求定积分
(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (factor k)
    (cond ((or (= k 0) (= k n)) 1)
          ((even? k) 2)
          (else 4)
  ))
  (define (term k)
    (* (factor k) (y k))
  )
  (define (next k)
    (+ k 1)
  )
  (if (not (even? n))
      (error "n can not be odd")
      (* (/ h 3)
         (sum term (exact->inexact 0) next n)
      )
  )
)
(display (simpson cube 0 1 1000))

; (define (simpson f a b n)
;   (define h (/ (- b a) n))
;   (* (/ h 3) (simpson-iter f a h (exact->inexact 0) n))
; )

; (define (simpson-iter f a h x n)
;   (define m
;     (cond ((or (= x 0) (= x n)) 1)
;           ((even? x) 2)
;           (else 4)
;     )
;   )
;   (if (> x n) 0
;       (+ (* m(f (+ a (* h x)))) (simpson-iter f a h (+ x 1) n))
;   )
; )
; (display (simpson cube 0 1 1000))

