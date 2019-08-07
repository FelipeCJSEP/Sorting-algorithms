; SELECTION SORT IN SCHEME

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(define selectionSort (lambda (arr)
	(define smaller 0)
	(define swap 0)

	(do ((i 0 (+ i 1))) ((= i (- (vector-length arr) 1)) i)
		(set! smaller i)

		(do ((j (+ i 1) (+ j 1))) ((= j (vector-length arr)) j)
			(cond ((< (vector-ref arr j) (vector-ref arr smaller))
				(set! smaller j)
			))
		)

		(cond ((> smaller i)
			(set! swap (vector-ref arr i))
			(vector-set! arr i (vector-ref arr smaller))
			(vector-set! arr smaller swap)
		))
	)

	arr
))

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(define arr (vector 5 2 -3 10 23 99 -1 7 93 0))
(define sortedArr (selectionSort arr))

(print "Sorted Array:")

(do ((i 0 (+ i 1))) ((= i (vector-length arr)) i)
	(print (vector-ref sortedArr i))
)