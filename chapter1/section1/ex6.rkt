#lang sicp

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 4)

; Not as accurate for small numbers..
(sqrt 0.000004)

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter-new guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-new (improve guess x) x)))

(define (sqrt-new x)
    (sqrt-iter-new 1.0 x))

(sqrt-new 4)
; Creates an infinite loop.
; The if special form evaluates the predicate first, then either the
; consequent or alternative depending on the value of the predicate.
; The new-if expression uses applicative-order evaluation, so it
; tries to resolve all arguments it receives first before expanding
; into its implementation. In this case, the last argument is a
; recursive call to sqrt-iter-new, so we get an endless loop of
; recursive calls to sqrt-iter-new without ever actually resolving
; the new-if expressions.
