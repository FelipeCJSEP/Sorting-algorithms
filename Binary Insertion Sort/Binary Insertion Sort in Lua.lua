-- BINARY INSERTION SORT IN LUA

-- function algorithm that returns the sorted array
-- algoritmo da função que retorna o array ordenado
function binaryInsertionSort(arr)
	for i = 2, #arr do
		selected, first, last = arr[i], 1, i - 1

		while first <= last do
			mid = (first + last) // 2

			if selected > arr[mid] then
				first = mid + 1
			else
				last = mid - 1
			end
		end

		if selected > arr[mid] then
			mid = mid + 1
		end

		j = i - 1
		
		while j >= mid do
			arr[j + 1] = arr[j]
			j = j - 1
		end

		arr[j + 1] = selected
	end

	return arr
end

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
sortedArr = binaryInsertionSort(arr)

print("Sorted Array:")

for i = 1, #sortedArr do
	print(sortedArr[i])
end