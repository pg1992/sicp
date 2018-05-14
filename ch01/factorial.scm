; linear recursive
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

; linear iterative
(define (new-fact n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))

(factorial 6)
(new-fact 6)
