(define gcdiv 
  (lambda (a b) 
    (if (= a 0)
    	b
	(gcdiv (modulo b a) a)
    )
  ) 
)

(define x (read))
(define y (read))

(print (gcdiv x y))
