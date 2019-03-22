; BUBBLE SORT IN LISP

; function algorithm that returns the sorted array
; algoritmo da função que retorna o array ordenado
(defun bubbleSort(arr)
    (loop for i from 0 to (- (array-total-size arr) 2) do
        (loop for j from (+ i 1) to (- (array-total-size arr) 1) do
            (cond ((> (aref arr i) (aref arr j))
                (setf swap (aref arr i))
                (setf (aref arr i) (aref arr j))
                (setf (aref arr j) swap)
            ))
        )
    )

	(return-from bubbleSort arr)
)

; code only to call and test the sort function
; código apenas para chamar e testar a função de ordenação
(setf arr (make-array '(10) :initial-contents' (5 2 -3 10 23 99 -1 7 93 0)))
(setf arrSorted (bubbleSort arr))

(write-line "Array Sorted")

(loop for i from 0 to (- (array-total-size arrSorted) 1) do
	(print (aref arrSorted i))
)