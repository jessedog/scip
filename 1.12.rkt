#lang sicp

; 杨辉三角形
(define (yanghui row col)
  (if (or (= col 0) (= col row))
    1
    (+ (yanghui (- row 1) (- col 1)) (yanghui (- row 1) col))
  )
)

(display (yanghui 4 3))
