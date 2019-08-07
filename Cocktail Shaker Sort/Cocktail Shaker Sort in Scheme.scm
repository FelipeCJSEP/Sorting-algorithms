; COCKTAIL SHAKER SORT IN SCHEME

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(define cocktailShakerSort (lambda (arr)
	(define beginIndex 0)
	(define endIndex (vector-length arr))

	(define (loop swapped)
		(define swap 0)
		(set! endIndex (- endIndex 1))

		(do ((i beginIndex (+ i 1))) ((= i endIndex) i)
			(cond ((> (vector-ref arr i) (vector-ref arr (+ i 1)))
				(set! swap (vector-ref arr i))
				(vector-set! arr i (vector-ref arr (+ i 1)))
				(vector-set! arr (+ i 1) swap)
				(set! swapped 1)
			))
		)

		(cond ((= swapped 1)
			(set! swapped 0)
			(set! beginIndex (+ beginIndex 1))

			(do ((i (- endIndex 1) (- i 1))) ((= i (- beginIndex 1)) i)
				(cond ((< (vector-ref arr i) (vector-ref arr (- i 1)))
					(set! swap (vector-ref arr i))
					(vector-set! arr i (vector-ref arr (- i 1)))
					(vector-set! arr (- i 1) swap)
					(set! swapped 1)
				))
			)
		))

		(cond ((= swapped 1)
			(loop 0)
		))
	)

	(loop 0)

	arr
))

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(define arr (vector 5 2 -3 10 23 99 -1 7 93 0))
(define sortedArr (cocktailShakerSort arr))

(print "Sorted Array")

(do ((i 0 (+ i 1))) ((= i (vector-length arr)) i)
	(print (vector-ref sortedArr i))
)