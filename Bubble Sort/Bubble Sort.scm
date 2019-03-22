; BUBBLE SORT IN SCHEME

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(define bubbleSort (lambda (arr)
	(define swap 0)

	(do ((i 0 (+ i 1))) ((= i (- (vector-length arr) 1)) i)
		(do ((j (+ i 1) (+ j 1))) ((= j (vector-length arr)) j)
			(cond ((> (vector-ref arr i) (vector-ref arr j))
				(set! swap (vector-ref arr i))
				(vector-set! arr i (vector-ref arr j))
				(vector-set! arr j swap)
			))
		)
	)

	arr
))

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(define arr (vector 5 2 -3 10 23 99 -1 7 93 0))
(define arrSorted (bubbleSort arr))

(print "Array Sorted")

(do ((i 0 (+ i 1))) ((= i (vector-length arr)) i)
	(print (vector-ref arrSorted i))
)