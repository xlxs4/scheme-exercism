(import (rnrs))

(define (leap-year? year)
  (letrec ((zeromod? (lambda (x y) (zero? (modulo x y)))))
    (or (zeromod? year 400)
        (and (not (zeromod? year 100))
             (zeromod? year 4)))))
