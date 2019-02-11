#lang racket
(define-namespace-anchor anc)
(define ns (namespace-anchor->namespace anc))


(define (reverse-general L)
    (if (null? L)
        L
        (append (reverse-general (cdr L)) (list 
         (if (not (list? (car L))) (car L)
       (reverse-general (car L))
    );if
  )))
  
);

(define (sum-up-numbers-simple L) 

 (define (newLst L)
  (if (null? L) L
  (append 
  
  (newLst (cdr L))

  (if (number? (car L)) (list (car L))
    '(0)
  );if

  );append
  );if
 );define

 (define equation (newLst L))
 (eval (cons '+ equation) ns)

  
);define sum-up-numbers-simple



(define (sum-up-numbers-general L) 

 (define (newLst L)
  (if (null? L) L
  (append 
  
  (newLst (cdr L))

  (cond 
    ((number? (car L)) (list (car L)))
    ((list? (car L)) (newLst (car L)))
    (else '(0))
  );cond

  );append
  );if
 );define

 (define equation (newLst L))
 (eval (cons '+ equation) ns)

);define sum-up-numbers-general


(define (min-above-min L1 L2) 
  
  (define (allNums L)
    (if (null? L)
      L
      
    );if
  );define

  (define l1 (allNums L1))
  (define l2 (allNums L2))

  

);define


