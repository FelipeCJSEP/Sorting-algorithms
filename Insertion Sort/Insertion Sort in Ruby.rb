# INSERTION SORT IN RUBY

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
def insertionSort(arr)
	for i in 1..arr.length - 1
		j = i

		while j > 0 and arr[j] < arr[j - 1]
			arr[j], arr[j - 1] = arr[j - 1], arr[j]
			j -= 1
		end
	end

	return arr
end

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = Array[5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = insertionSort(arr)

puts "Array Sorted:\n"
puts arrSorted;