#lang sicp

(define tolerance 0.00001)
(define (average x y) (/ (+ x y) 2.0))

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance)
)

(define (fixed-point f first-guess)
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess)
)

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y))) 1.0))
(display (sqrt 9))
(newline)

(define (iterative-improve good-enough? improve)
  (lambda (guess) 
    (define (try guess)
      (let ((next (improve guess)))
        (if (good-enough? guess next)
            next
            (try next))
      )
    )
    (try guess)))


(define (fixed-point-v2 f first-guess)
  (define (improve guess)
      (f guess))
  ((iterative-improve close-enough? improve) first-guess)
)

(define (sqrt2 x)
  (fixed-point-v2 (lambda (y) (average y (/ x y))) 1.0))
(display (sqrt2 9))