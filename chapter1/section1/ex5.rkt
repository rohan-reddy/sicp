#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; Applicative order evaluation: the arguments are evaluated first.
; Hence, we could be stuck in an infinite loop of replacing (p) with (p).
; Normal order evaluation: the expressions are expanded first.
; Since the first argument is 0, we will never have to evaluate (p).
; The first branch of the if expression is returned.
