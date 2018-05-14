(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (f a b c)
        (cond ((and (<= c a) (<= c b)) (sum-of-squares a b))
              ((and (<= b a) (<= b c)) (sum-of-squares a c))
              ((and (<= a b) (<= a c)) (sum-of-squares b c))))
(f 1 2 3)
(f 1 1 1)