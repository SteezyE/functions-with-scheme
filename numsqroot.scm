(define newton 
  (lambda (f d x) 
    (- x (/ (f x) (d x)))
  )
)

(define zero 
  (lambda (f d x t)
    (if (< (abs (- (newton f d x) x)) t)
    	x
	(zero f d (newton f d x) t)
    )
  )
)

(define n (read))

(print 
  (zero (lambda (x) (- (/ (+ x (/ n x)) 2) x))
	(lambda (x) (* -1 (/ (+ n (* x x)) (* 2 (* x x)))))
	1
	0.000000001
  )
)
