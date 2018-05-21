(define n 6)

; linear recursive
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(factorial n)

; linear iterative
(define (factorial n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))

(factorial n)
