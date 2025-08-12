#lang sicp

10 ; 10
(+ 5 3 4) ; 12
(- 9 1) ; 8
(/ 6 2) ; 3
(+ (* 2 4) (- 4 6)) ; 6
(define a 3) ; (No output)
(define b (+ a 1)) ; (No output)
(+ a b (* a b)) ; 19
(= a b) ; #f (means False)
(if (and (> b a) (< b (* a b)))
    b
    a) ; 4, since b will be printed
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ; 16, since b=4, the 2nd branch will evaluate.
(+ 2 (if (> b a) b a)) ; 6, since b will be returned by the if expression
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ; 16, since b will be returned from the cond expression
