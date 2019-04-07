; SELECTION SORT IN LISP

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(defun selectionSort(arr)
	(loop for i from 0 to (- (array-total-size arr) 2) do
		(setf smaller i)

		(loop for j from (+ i 1) to (- (array-total-size arr) 1) do
			(cond ((< (aref arr j) (aref arr smaller))
				(setf smaller j)
			))
		)

		(cond ((> smaller i)
			(setf swap (aref arr i))
			(setf (aref arr i) (aref arr smaller))
			(setf (aref arr smaller) swap)
		))
	)

	(return-from selectionSort arr)
)

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(setf arr (make-array '(10) :initial-contents' (5 2 -3 10 23 99 -1 7 93 0)))
(setf arrSorted (selectionSort arr))

(write-line "Array Sorted:")

(loop for i from 0 to (- (array-total-size arrSorted) 1) do
	(print (aref arrSorted i))
)