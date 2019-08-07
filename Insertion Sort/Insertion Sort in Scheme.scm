; INSERTION SORT IN SCHEME

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(define insertionSort (lambda (arr)
	(define j 0)
	(define swap 0)

	(do ((i 1 (+ i 1))) ((= i (vector-length arr)) i)
		(define (loop j)
			(cond ((and (> j 0) (< (vector-ref arr j) (vector-ref arr (- j 1))))
				(set! swap (vector-ref arr j))
				(vector-set! arr j (vector-ref arr (- j 1)))
				(vector-set! arr (- j 1) swap)
				(loop (- j 1))
			))
		)

		(loop i)
	)

	arr
))

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(define arr (vector 5 2 -3 10 23 99 -1 7 93 0))
(define sortedArr (insertionSort arr))

(print "Sorted Array")

(do ((i 0 (+ i 1))) ((= i (vector-length arr)) i)
	(print (vector-ref sortedArr i))
)