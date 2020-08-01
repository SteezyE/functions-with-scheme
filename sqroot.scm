(define mid 
  (lambda (l r) 
    (+ l (quotient (- r l) 2))
  )
)

(define bin_search 
  (lambda (l r n) 
    (if (= n 0)
    	0
	(if (and (<= (mid l r) (quotient n (mid l r))) (> (+ (mid l r) 1) (quotient n (+ (mid l r) 1))))
	    (mid l r)
	    (if (<= (mid l r) (quotient n (mid l r)))
	     	(bin_search (+ (mid l r) 1) r n)
		(bin_search l (- (mid l r) 1) n)
	    )	
	)
    )
  )
)

(define sqroot 
  (lambda (n) 
    (bin_search 1 n n)
  )
)

(print (sqroot (read)))
