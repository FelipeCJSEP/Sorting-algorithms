; GNOME SORT IN LISP

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(defun gnomeSort(arr)
	(setf i 0)

	(loop while (< i (array-total-size arr)) do
		(cond ((and (> i 0) (< (aref arr i) (aref arr (- i 1))))
			(setf swap (aref arr i))
			(setf (aref arr i) (aref arr (- i 1)))
			(setf (aref arr (- i 1)) swap)
			(setf i (- i 1))
		)
		(
			(setf i (+ i 1))
		))
	)

	(return-from gnomeSort arr)
)

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(setf arr (make-array '(10) :initial-contents' (5 2 -3 10 23 99 -1 7 93 0)))
(setf sortedArr (gnomeSort arr))

(write-line "Sorted Array:")

(loop for i from 0 to (- (array-total-size sortedArr) 1) do
	(print (aref sortedArr i))
)