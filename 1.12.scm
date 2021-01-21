; The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two numbers above it. Write a procedure that computes elements of Pascal's triangle by means of a recursive process.
; 1
; 1 1
; 1 2 1
; 1 3 3 1
; 1 4 6 4 1

(define (pascal r c)
  (cond ((or (< r 0) (< c 0)) 0)
        ((= c 0) 1)
        ((= r c) 1)
        ((> c r) 0)
        (else    (+ (pascal (- r 1) c) (pascal (- r 1) (- c 1))))
  ))

; TESTS
(= (pascal 0 0) 1)
(= (pascal -1 0) 0)
(= (pascal 1 0) 1)
(= (pascal 1 1) 1)
(= (pascal 2 0) 1)
(= (pascal 2 1) 2)
(= (pascal 3 1) 3)
(= (pascal 4 2) 6)
