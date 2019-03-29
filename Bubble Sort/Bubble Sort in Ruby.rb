# BUBBLE SORT IN RUBY

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
def bubbleSort(arr)
	n = arr.length
	
	begin
		swapped = false
		n -= 1

		for i in 0..n - 1
			if arr[i] > arr[i + 1] then
				swap = arr[i]
				arr[i] = arr[i + 1]
				arr[i + 1] = swap
				swapped = true
			end
		end
	end while swapped

	return arr
end

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = Array[5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = bubbleSort(arr)

puts "Array Sorted:\n"
puts arrSorted;