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
  );if
 );define


);define sum-up-numbers-simple