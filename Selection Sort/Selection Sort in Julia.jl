# SELECTION SORT IN JULIA

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
function selectionSort(arr)
	for i = 1: length(arr) - 1
		smaller = i

		for j = i + 1: length(arr)
			if arr[j] < arr[smaller]
				smaller = j
			end
		end

		if smaller > i
			arr[i], arr[smaller] = arr[smaller], arr[i]
		end
	end

	return arr
end

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = selectionSort(arr)

println("Array Sorted:")

for a in arrSorted
	println(a)
end