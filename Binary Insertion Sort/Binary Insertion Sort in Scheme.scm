; BINARY INSERTION SORT IN SCHEME

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(define binaryInsertionSort (lambda (arr)
	(define selected 0)
	(define first 0)
	(define last 0)
	(define mid 0)
	(define j 0)

	(do ((i 1 (+ i 1))) ((= i (vector-length arr)) i)
		(set! selected (vector-ref arr i))
		(set! first 0)
		(set! last (- i 1))

		(define (loop)
			(cond ((<= first last)
				(set! mid (quotient (+ first last) 2))

				(cond ((> selected (vector-ref arr mid))
					(set! first (+ mid 1))
				)
				(
					(set! last (- mid 1))
				))

				(loop)
			))
		)

		(loop)

		(cond ((> selected (vector-ref arr mid))
			(set! mid (+ mid 1))
		))

		(set! j (- i 1))

		(define (loop2)
			(cond ((>= j mid)
				(vector-set! arr (+ j 1) (vector-ref arr j))
				(set! j (- j 1))
				(loop2)
			))
		)

		(loop2)

		(vector-set! arr (+ j 1) selected)
	)

	arr
))

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(define arr (vector 5 2 -3 10 23 99 -1 7 93 0))
(define sortedArr (binaryInsertionSort arr))

(print "Sorted Array")

(do ((i 0 (+ i 1))) ((= i (vector-length arr)) i)
	(print (vector-ref sortedArr i))
)