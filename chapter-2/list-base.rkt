#lang sicp

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ count 1))))
  (length-iter items 0))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (print-list items)
  (define (print-list-iter a)
    (if (null? a)
        (display ")")
        ((display (car a))
         (if (null? (cdr a))
             (display "")
             (display ", "))
         (print-list-iter (cdr a)))
        ))
  (display "(")
  (print-list-iter items)
  )

; p17
(define (last-pair items)
  (if (null? items)
      nil
      (list-ref items (- (length items) 1))))

; p18
(define (reverse items)
  (define (reverse-iter a res)
    (if (null? a)
        res
        (reverse-iter (cdr a) (cons (car a) res))))
  (reverse-iter items '()))

(define list1 (list 1 2 3 4))
(define list2 (list 5 6 7))
; (display (car (cons 1 2)))
; (newline)
; (length list1)
; (list-ref list1 1)
; (print-list (append list1 list2))
; (display (last-pair list1))
; (print-list (reverse (append list1 list2)))
(list-ref (reverse list1) 0)