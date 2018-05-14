(define (inc i)
  (+ i 1))
(define (dec i)
  (- i 1))
(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))
(define (plus-new a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(plus 4 5)
; (inc (plus 3 5))
; (inc (inc (plus 2 5)))
; (inc (inc (inc (plus 1 5))))
; (inc (inc (inc (inc (plus 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
; linear recursive process

(plus-new 4 5)
; (plus-new 3 6)
; (plus-new 2 7)
; (plus-new 1 8)
; (plus-new 0 9)
; 9
; linear iterative process
