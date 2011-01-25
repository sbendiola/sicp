#lang racket
(define (sum-squares-2-largest x y z)
  (define items (list x y z))
  (define two-largest (take (sort items >) 2))  
  (define squared (map (lambda (x) (* x x)) two-largest))
  (foldl (lambda (acc x) (+ acc x)) 0 squared))