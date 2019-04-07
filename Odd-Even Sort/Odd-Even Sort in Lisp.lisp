; ODD-EVEN SORT IN LISP

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(defun oddEvenSort(arr)
	(loop do
		(setf swapped 0)

		(loop for i from 0 to (- (array-total-size arr) 2) by 2 do
			(cond ((> (aref arr i) (aref arr (+ i 1)))
				(setf swap (aref arr i))
				(setf (aref arr i) (aref arr (+ i 1)))
				(setf (aref arr (+ i 1)) swap)
				(setf swapped 1)
			))
		)

		(loop for i from 1 to (- (array-total-size arr) 2) by 2 do
			(cond ((> (aref arr i) (aref arr (+ i 1)))
				(setf swap (aref arr i))
				(setf (aref arr i) (aref arr (+ i 1)))
				(setf (aref arr (+ i 1)) swap)
				(setf swapped 1)
			))
		)
	while (= swapped 1))

	(return-from oddEvenSort arr)
)

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(setf arr (make-array '(10) :initial-contents' (5 2 -3 10 23 99 -1 7 93 0)))
(setf arrSorted (oddEvenSort arr))

(write-line "Array Sorted:")

(loop for i from 0 to (- (array-total-size arrSorted) 1) do
	(print (aref arrSorted i))
)