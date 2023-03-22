#lang sicp
(#%require racket/trace)
(#%require "utils.rkt")

(define tolerance 0.00001)
(define (display-info guess step)
    (display "Step: ")
    (display step)
    (display " ")
    
    (display "Guess: ")
    (display guess)
    (newline))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance)
  )
  (define (try guess step)
    (display-info guess step)   
    (let ((next (f guess)))
      (if (close-enough? guess next)
          (begin (display-info next (+ step 1)) next)
          (try next (+ step 1)))))
  (try first-guess 1)
)

(define (average-damp f)
    (lambda (x)
        (average x 
                 (f x))))

(define formula
  (lambda (x) (/ (log 1000) (log x))))
(display (average-damp formula))

; (fixed-point (average-damp formula) 2.0)
(fixed-point formula 2.0)


