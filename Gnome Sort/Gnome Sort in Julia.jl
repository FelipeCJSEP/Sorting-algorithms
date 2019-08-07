# GNOME SORT IN JULIA

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
function gnomeSort(arr)
	i = 1

	while i <= length(arr)
		if i > 1 && arr[i] < arr[i - 1]
			arr[i], arr[i - 1] = arr[i - 1], arr[i]
			i -= 1
		else
			i += 1
		end
	end

	return arr
end

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = gnomeSort(arr)

println("Sorted Array:")

for a in sortedArr
	println(a)
end