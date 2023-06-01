#lang sicp
(#%require "./stream.rkt")

(define (count-leaves tree)
  (accmulate +
             0
             (map (lambda (sub-tree)
                    (if (pair? sub-tree)
                        (count-leaves sub-tree)
                        1))
                  tree)))

(count-leaves (list (list 1 2) (list 3 4) 5))
