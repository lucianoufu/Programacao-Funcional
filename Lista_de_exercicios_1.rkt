#lang racket
(require rackunit)
;Exercicio 1 - Verificar
(define (subs1 lst x y)
  (cond
    [(empty? lst) '()]
    [(equal? (car lst) x) (append (list y) (rest lst))]
    [else (subs1 (rest lst) x y)]))

(check-equal? (subs1 (list 10 20 10) 10 50) '(50 20 10))

;Exercicio 2
(define (subs2 lst x y)
  (cond
    [(empty? lst) '()]
    [(equal? (car lst) x) (append (list y) (rest lst))]
    [else (subs2 (rest lst) x y)]))

;Exercicio 3
(define (n-termo lst x)
  (cond
    [(empty? lst) '()]
    [(drop (take lst x) (- x 1))]))  
;Exercicio 4
(define (soma lst)
  (cond
    [(empty? lst) 0]
    [(+ (car lst) (soma (rest lst)))]))

;Exercicio 5
(define (somapar lst)
  (cond
    [(empty? lst) 0]
    [(= (remainder (car lst) 2) 0) (+ (car lst) (somapar (rest lst)))]
    [else (somapar (rest lst))]))

;Exercicio 6
(define (somaimpar lst)
  (cond
    [(empty? lst) 0]
    [(= (remainder (car lst) 2) 1) (+ (car lst) (somaimpar (rest lst)))]
    [else (somaimpar (rest lst))]))

;Exercicio 7

;Exercicio 8
(define (somatorio lst)
  (cond
    [(empty? lst) 0]
    [(+ (car lst) (somatorio (rest lst)))]))

(define (media lst)
  (cond
    [(empty? lst) 0]
    [(/ (+ (car lst) (somatorio (rest lst))) (length lst))]))

;Exercicio 9
;Oque é um predicado já definido

;Exercicio 10

(define (mediaa lst)
  (cond
    [(empty? lst) 0]
    [(/ (somatorio lst) (length lst))]))
;;Fazer variancia

;Exercicio 11
(define (tlista lst x)
  (cond
    [(empty? lst) 0]
    [(drop lst x)]))

;Exercicio 12
(define (flista lst x)
  (cond
    [(empty? lst) 0]
    [(take lst x)]))

;Exercicio 13
;Exercicio 20
(define (allnumber x y)
  (cond
    [(equal? y x) 0]
    [(append (list x)) (allnumber (+ 1 x) y)]))