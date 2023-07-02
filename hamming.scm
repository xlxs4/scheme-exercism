(import (rnrs))

(define (hamming-distance strand-a strand-b)
  (letrec* ((not-eq? (lambda (x y) (not (eq? x y)))))
    (if (= (string-length strand-a)
           (string-length strand-b))
        (length (filter identity (map not-eq?
                                      (string->list strand-a)
                                      (string->list strand-b))))
        (error "hamming distance is only defined for equal-length sequences"))))
