(define (cbrt x) 
  (define (cbrt-iter x guess guess-prev)
    (define (good-enough?) (= guess guess-prev))
    (define (improve) (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
    (if (good-enough?)
        guess
        (cbrt-iter x (improve) guess)))
  (cbrt-iter x 1.0 0.0))

; TESTS
(cbrt 27)
(cbrt (+ 100 37))
(cbrt (+ (cbrt 2) (cbrt 3)))
(* (cbrt 1000) (cbrt 1000) (cbrt 1000))
