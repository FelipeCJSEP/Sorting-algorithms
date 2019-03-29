# BUBBLE SORT IN JULIA

function bubbleSort(arr)
	n = length(arr)

	while true
		swapped = false
		n -= 1

		for i = 1: n
			if arr[i] > arr[i + 1]
				swap = arr[i]
				arr[i] = arr[i + 1]
				arr[i + 1] = swap
				swapped = true
			end
		end

		!swapped && break
	end

	return arr
end

arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = bubbleSort(arr)

println("Array Sorted:")

for a in arrSorted
	println(a)
end