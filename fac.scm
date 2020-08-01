(define fak 
  (lambda (n) 
    (if (= n 1) 
      	1 
      	(* n (fak (- n 1)))
    )
  )
)
(print (fak (read)))
