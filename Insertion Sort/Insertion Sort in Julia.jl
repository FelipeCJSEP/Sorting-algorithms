# INSERTION SORT IN JULIA

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
function insertionSort(arr)
	for i = 2: length(arr)
		j = i
		
		while j > 1 && arr[j] < arr[j - 1]
		    arr[j], arr[j - 1] = arr[j - 1], arr[j]
		    j -= 1
		end
	end

	return arr
end

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = insertionSort(arr)

println("Sorted Array:")

for a in sortedArr
	println(a)
end