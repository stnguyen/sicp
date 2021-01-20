; f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.

; TESTS
(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1))
         (* 2 (f-recur (- n 2)))
         (* 3 (f-recur (- n 3))))))

(= (f-recur -1) -1)
(= (f-recur 0) 0)
(= (f-recur 1) 1)
(= (f-recur 2) 2)
(= (f-recur 3) 4) ; f(2) + 2f(1) + 3f(0)
(= (f-recur 4) 11) ; f(3) + 2f(2) + 3f(1)

(define (f-iter n)
  (define (f-iter-inner i prev1 prev2 prev3)
    (if (> i n)
        prev1
        (f-iter-inner (+ i 1)
                      (+ prev1 (* 2 prev2) (* 3 prev3))
                      prev1
                      prev2)))
        
  (if (< n 3)
      n
      (f-iter-inner 3 2 1 0)))

(= (f-iter -1) -1)
(= (f-iter 0) 0)
(= (f-iter 1) 1)
(= (f-iter 2) 2)
(= (f-iter 3) 4) ; f(2) + 2f(1) + 3f(0)
(= (f-iter 4) 11) ; f(3) + 2f(2) + 3f(1)

