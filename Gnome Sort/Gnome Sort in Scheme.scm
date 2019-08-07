; GNOME SORT IN SCHEME

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(define gnomeSort (lambda (arr)
	(define i 0)
	(define swap 0)

	(define (loop i)
		(cond ((< i (vector-length arr))
			(cond ((and (> i 0) (< (vector-ref arr i) (vector-ref arr (- i 1))))
				(set! swap (vector-ref arr i))
				(vector-set! arr i (vector-ref arr (- i 1)))
				(vector-set! arr (- i 1) swap)
				(loop (- i 1))
			)
			(
				(loop (+ i 1))
			))
		))
	)

	(loop 0)

	arr
))

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(define arr (vector 5 2 -3 10 23 99 -1 7 93 0))
(define arrSorted (gnomeSort arr))

(print "Array Sorted")

(do ((i 0 (+ i 1))) ((= i (vector-length arr)) i)
	(print (vector-ref arrSorted i))
)