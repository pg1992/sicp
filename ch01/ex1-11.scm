; f(n) = n if n < 3
; f(n) = f(n-1) + 2*f(n-2) + 3*f(n-3) if n>=3

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 20)

(define (f n)
  (define (iter a b c n)
    (cond ((< n 1) c)
          (else (iter (+ a
                         (* 2 b)
                         (* 3 c))
                      a
                      b
                      (- n 1)))))
  (iter 2 1 0 n))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 20)
