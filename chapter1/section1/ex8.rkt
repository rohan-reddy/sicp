#lang sicp

(define (cube x) (* x x x))

(define (good-enough? x guess)
    (< (abs (- (cube guess) x)) (/ guess 1000)))

(define (improve x guess)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (newton-cube-root-iter x guess)
    (if (good-enough? x guess)
        guess
        (newton-cube-root-iter x (improve x guess))))

(define (cube-root x) (newton-cube-root-iter x 1.0))

(cube-root 27)
