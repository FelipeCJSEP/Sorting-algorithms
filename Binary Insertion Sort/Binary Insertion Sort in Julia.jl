# BINARY INSERTION SORT IN JULIA

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
function binaryInsertionSort(arr)
	for i = 2: length(arr)
		selected = arr[i]
		first = 1
		last = i - 1
		mid = 0

		while first <= last
			mid = (first + last) ÷ 2

			if selected > arr[mid]
				first = mid + 1
			else
				last = mid - 1
			end
		end

		if selected > arr[mid]
			mid += 1
		end

		j = i - 1
		
		while j >= mid
			arr[j + 1] = arr[j]
			j -= 1
		end

		arr[j + 1] = selected
	end

	return arr
end

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = binaryInsertionSort(arr)

println("Sorted Array:")

for a in sortedArr
	println(a)
end