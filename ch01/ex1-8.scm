; Find the cube-root of a number

(define (cube-root x)
        (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
        (if (good-enough? guess x)
            guess
            (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
        (< (abs (- x (cube guess))) 0.0001))

(define (improve guess x)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
        (* x x))

(define (cube x)
        (* x x x))


(cube-root 27)
(cube-root 64)
