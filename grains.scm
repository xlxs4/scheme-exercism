(import (rnrs))

(define (square n)
  (unless (and (> n 0)
           (< n 65))
    (error #f "Invalid number of squares!"))
  (ash 1 (1- n)))

(define total
  (1- (ash 1 64)))
