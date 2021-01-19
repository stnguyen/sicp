(define (sqrt x) 
  (define (sqrt-iter x guess guess-prev)
    (define (good-enough?) (= guess guess-prev))
    (define (improve) (/ (+ (/ x guess) guess) 2))
    (if (good-enough?)
        guess
        (sqrt-iter x (improve) guess)))
  (sqrt-iter x 1.0 0.0))

; TESTS
(sqrt 0.0001)
(sqrt 10000000000000)
(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))
