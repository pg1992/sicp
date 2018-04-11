(define (sqrt x)
        (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

(define (new-sqrt-iter guess x)
        (if (new-good-enough? guess x)
            guess
            (new-sqrt-iter (improve guess x) x)))

(define (improve guess x)
        (average guess (/ x guess)))

(define (average x y)
        (/ (+ x y) 2))

(define (good-enough? guess x)
        (< (abs (- x (square guess))) 0.0001))

(define (new-good-enough? guess x)
        (< (abs (/ (change guess x) guess)) 1e-5))

(define (change guess x)
        (- guess (improve guess x)))

(define (square x)
        (* x x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))
(square (sqrt 9e-20))
(square (sqrt 9e100))
