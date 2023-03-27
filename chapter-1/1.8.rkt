#lang sicp

(#%require "square.rkt")

(define (good-enough? old-guess new-guess)
 (< 
    (/ 
      (abs (- old-guess new-guess)) 
      old-guess
    ) 
    0.001
  )
)

(define (improve guess x)
        (/ 
          (+ (/ x (square guess)) (* 2 guess)) 
          3
        )
)

(define (sqrt-iter guess x)
  (define newGuess (improve guess x))
  (if (good-enough? guess newGuess)
      guess
      (sqrt-iter newGuess x)
  )
)

(define (sqrt x) 
  (sqrt-iter 1.0 x))

(display (sqrt 64) )
