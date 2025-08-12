#lang sicp

(define (sum-squares-largest-two a b c)
    (cond
        ((> a b)
            (if (> b c)
                (+ (* a a) (* b b))
                (+ (* a a) (* c c))
            ))
        ((> a c) (+ (* a a) (* b b)))
        (else (+ (* b b) (* c c)))
    )
)

(sum-squares-largest-two 3 5 7) ; Should be 74
(sum-squares-largest-two 3 2 1) ; Should be 13
(sum-squares-largest-two 3 4 3) ; Should be 25
