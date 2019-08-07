-- GNOME SORT IN LUA

-- function algorithm that returns the sorted array
-- algoritmo da função que retorna o array ordenado
function gnomeSort(arr)
	i = 1

	while i <= #arr do
		if i > 1 and arr[i] < arr[i - 1] then
			arr[i], arr[i - 1] = arr[i - 1], arr[i]
			i = i - 1
		else
			i = i + 1
		end
	end

	return arr
end

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
sortedArr = gnomeSort(arr)

print("Sorted Array:")

for i = 1, #sortedArr do
	print(sortedArr[i])
end