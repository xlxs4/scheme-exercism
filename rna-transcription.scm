(import (rnrs))

(define (dna->rna dna)
  (letrec* ((complement
             (lambda (base)
               (cond
                ((eq? base #\G) #\C)
                ((eq? base #\C) #\G)
                ((eq? base #\T) #\A)
                ((eq? base #\A) #\U)
                (else #\?)))))
    (list->string (map complement (string->list dna)))))
