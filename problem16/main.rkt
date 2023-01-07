#lang typed/racket/base

(module+ main

  (define num (arithmetic-shift 1 1000))

  (define digits
    (filter complex? (map (compose string->number string) (string->list (number->string num)))))

  (apply + digits))
