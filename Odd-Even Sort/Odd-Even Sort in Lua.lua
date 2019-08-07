-- ODD-EVEN SORT IN LUA

-- function algorithm that returns the sorted array
-- algoritmo da função que retorna o array ordenado
function oddEvenSort(arr)
	repeat
		swapped = false

		for i = 1, #arr - 1, 2 do
			if arr[i] > arr[i + 1] then
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end

		for i = 2, #arr - 1, 2 do
			if arr[i] > arr[i + 1] then
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end
	until not swapped

	return arr
end

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
sortedArr = oddEvenSort(arr)

print("Sorted Array:")

for i = 1, #sortedArr do
	print(sortedArr[i])
end