(define (pascal n k)
  (cond ((or (= n 0) (= k 0)) 0)
        ((= k n) 1)
        ((= k 1) 1)
        (else (+ (pascal (- n 1) (- k 1))
                 (pascal (- n 1) k)))))

(pascal 1 1)

(pascal 2 1)
(pascal 2 2)

(pascal 3 1)
(pascal 3 2)
(pascal 3 3)

(pascal 4 1)
(pascal 4 2)
(pascal 4 3)
(pascal 4 4)

(pascal 5 1)
(pascal 5 2)
(pascal 5 3)
(pascal 5 4)
(pascal 5 5)
