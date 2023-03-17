(load "square.ss")

(define (expt-iter b n a)
  (cond 
    ((= n 0) a)
    ((even? n) (expt-iter (square b) (/ n 2) a))
    ((odd? n) (expt-iter b (- n 1) (* b a)))
  )
)

(define (expt b n)
  (expt-iter b n 1)
)

(display (expt 2 10))
; (expt 2 3)
; (expt-iter 2 3 1)
; (expt-iter 2 2 2)
; (expt-iter 4 1 2)
; (expt-iter 4 0 8)
