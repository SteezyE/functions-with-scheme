(define fib 
  (lambda (n) 
    (cond ((or (= n 1) (= n 0)) n)
    (else (+ (fib (- n 2)) (fib (- n 1))))
    ) 
   )
  )
(print (fib (read)))
