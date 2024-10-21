; (define (make-rat n d) 
;     (if (< n 0) (cons n (* d -1)))
;     (if (< d 0) (cons (* n -1) d))
;     (* d -1)
; ) 

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x) 
    (newline)
    (display (numer x)) 
    (display "/") 
    (display (denom x)))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define one-half (make-rat -1 2)) 
(define one-third (make-rat -1 3))

(print-rat (add-rat one-half one-third)) ; 5/6
(print-rat (mul-rat one-half one-third)) ; 1/6