# BUBBLE SORT IN RUBY

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
def bubbleSort(arr)
	for	i in 0..arr.length - 2
		for j in i + 1..arr.length - 1
			if arr[i] > arr[j] then
				swap = arr[i]
				arr[i] = arr[j]
				arr[j] = swap
			end
		end
	end

	return arr
end

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = Array[5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = bubbleSort(arr)

puts "Array Sorted:\n"
puts arrSorted;