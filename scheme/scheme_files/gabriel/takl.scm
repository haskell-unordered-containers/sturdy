#lang scheme
;;Expected result : True, PASSES
(define (listn n)
  (if (= n 0)
      '()
      (cons n (listn (- n 1)))))
(define (shorterp x y)
  (and (not (null? y))
       (or (null? x)
           (shorterp (cdr x)
                     (cdr y)))))
(define (mas x y z)
  (if (not (shorterp y x))
      z
      (mas (mas (cdr x) y z)
           (mas (cdr y) z x)
           (mas (cdr z) x y))))
(define (equal? x y)
  (if (eq? x y)
      #t
      (if (and (null? x) (null? y))
          #t
          (if (and (cons? x) (cons? y))
              (and (equal? (car x) (car y)) (equal? (cdr x) (cdr y)))
              #f))))
(let ((result '(7 6 5 4 3 2 1)))
  (equal? (mas (listn 18) (listn 12) (listn 6)) result))
