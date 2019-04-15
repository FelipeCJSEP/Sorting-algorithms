-- INSERTION SORT IN LUA

-- function algorithm that returns the sorted array
-- algoritmo da função que retorna o array ordenado
function insertionSort(arr)
	for i = 2, #arr do
		j = i
		
		while j > 1 and arr[j] < arr[j - 1] do
			arr[j], arr[j - 1] = arr[j - 1], arr[j]
			j = j - 1
		end
	end

	return arr
end

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
arrSorted = insertionSort(arr)

print("Array Sorted:")

for i = 1, #arrSorted do
	print(arrSorted[i])
end