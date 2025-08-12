#lang sicp

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; If b is positive, we add a and b. Otherwise, we subtract b from a.
; This is equivalent to evaluating a plus the absolute value of b.

(a-plus-abs-b 1 2) ; 3
(a-plus-abs-b 1 0) ; 1
(a-plus-abs-b 2 -2) ; 4
