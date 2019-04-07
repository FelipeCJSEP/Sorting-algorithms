-- SELECTION SORT IN LUA

-- function algorithm that returns the sorted array
-- algoritmo da função que retorna o array ordenado
function selectionSort(arr)
	for i = 1, #arr - 1 do
		smaller = i

		for j = i + 1, #arr do
			if arr[j] < arr[smaller] then
				smaller = j
			end
		end

		if smaller > i then
			arr[i], arr[smaller] = arr[smaller], arr[i]
		end
	end

	return arr
end

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
arrSorted = selectionSort(arr)

print("Array Sorted:")

for i = 1, #arrSorted do
	print(arrSorted[i])
end