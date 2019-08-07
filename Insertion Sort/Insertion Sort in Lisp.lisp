; INSERTION SORT IN LISP

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(defun insertionSort(arr)
	(loop for i from 0 to (- (array-total-size arr) 1) do
		(setf j i)
		
		(loop while (and (> j 0) (< (aref arr j) (aref arr (- j 1)))) do
			(setf swap (aref arr j))
			(setf (aref arr j) (aref arr (- j 1)))
			(setf (aref arr (- j 1)) swap)
			(setf j (- j 1))
		)
	)

	(return-from insertionSort arr)
)

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(setf arr (make-array '(10) :initial-contents' (5 2 -3 10 23 99 -1 7 93 0)))
(setf sortedArr (insertionSort arr))

(write-line "Sorted Array:")

(loop for i from 0 to (- (array-total-size sortedArr) 1) do
	(print (aref sortedArr i))
)