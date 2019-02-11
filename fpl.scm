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
      (append (allNums(cdr L)) 
        (if (number? (car L))
        (list (car L))
        '()
        );if
      );append
    );if
  );define

  (define l1 (allNums L1))
  (define l2 (allNums L2))

  (define (findLowest lst)
    (if (null? (cdr lst))
      (car lst)
      (if (< (car lst) (findLowest (cdr lst))) 
        (car lst)
        (findLowest (cdr lst))
      );if
    );if
  );define


  (cond 

    ((null? l1) "#F")
    ((null? l2) (findLowest l1))
    ((not (null? l2))


      (define L2Low (findLowest l2))


  (define (remove x ls)
  (if (null? ls)
      '()
      (let ((h (car ls)))
        ((if (eqv? x h)
            (lambda (y) y)
            (lambda (y) (cons h y)))
         (remove x (cdr ls))))))

    
    
     
     ))
);define


