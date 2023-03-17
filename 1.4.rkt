#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (define newGuess (improve guess x))
  (if (good-enough? guess newGuess)
      guess
      (sqrt-iter newGuess x)
  ; (new-if (good-enough? guess x)
  ;         guess
  ;         (sqrt-iter (improve guess x) x)
  )
)
  
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? old-guess new-guess)
 (< 
    (/ 
      (abs (- old-guess new-guess)) 
      old-guess
    ) 
    0.01
  )
)

(define (square x)
  (* x x))

(define (sqrt x) 
  (sqrt-iter 1.0 x))

; (new-if #t (display "good") (display "bad"))
(display (sqrt 0.00009))
