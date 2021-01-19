(define (sumSquare x y) (+ (* x x) (* y y)))

(define (sumSquareTwoMax x y z)
  (cond
    ((> x y z) (sumSquare x y))
    ((> x z y) (sumSquare x z))
    ((> y x z) (sumSquare y x))
    ((> y z x) (sumSquare y z))
    ((> z x y) (sumSquare z x))
    ((> z y x) (sumSquare z y))))

; TESTS
(= (sumSquareTwoMax 1 2 3) 13)
(= (sumSquareTwoMax 1 3 2) 13)
(= (sumSquareTwoMax 2 1 3) 13)
(= (sumSquareTwoMax 2 3 1) 13)
(= (sumSquareTwoMax 3 2 1) 13)
(= (sumSquareTwoMax 3 1 2) 13)

