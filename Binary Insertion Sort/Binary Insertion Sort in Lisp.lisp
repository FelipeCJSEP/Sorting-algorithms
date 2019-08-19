; BINARY INSERTION SORT IN LISP

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(defun binaryInsertionSort(arr)
	(loop for i from 1 to (- (array-total-size arr) 1) do
		(setf selected (aref arr i))
		(setf first 0)
		(setf last (- i 1))
		(setf mid 0)

		(loop while (<= first last) do
			(setf mid (truncate (+ first last) 2))

			(cond ((> selected (aref arr mid))
				(setf first (+ mid 1))
			)
			(
				(setf last (- mid 1))	
			))
		)

		(cond ((> selected (aref arr mid))
			(setf mid (+ mid 1))
		))

		(setf j (- i 1))

		(loop while (>= j mid) do
			(setf (aref arr (+ j 1)) (aref arr j))
			(setf j (- j 1))
		)

		(setf (aref arr (+ j 1)) selected)
	)

	(return-from binaryInsertionSort arr)
)

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(setf arr (make-array '(10) :initial-contents' (5 2 -3 10 23 99 -1 7 93 0)))
(setf sortedArr (binaryInsertionSort arr))

(write-line "Sorted Array:")

(loop for i from 0 to (- (array-total-size sortedArr) 1) do
	(print (aref sortedArr i))
)