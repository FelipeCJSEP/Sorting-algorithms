# COCKTAIL SHAKER SORT IN JULIA

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
function cocktailShakerSort(arr)
	beginIndex, endIndex = 1, length(arr)

	while true
		swapped = false
		endIndex -= 1

		for i = beginIndex: endIndex
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end

		if swapped
			swapped = false
			beginIndex += 1

			for i = endIndex: -1: beginIndex
				if arr[i] < arr[i - 1]
					arr[i], arr[i - 1] = arr[i - 1], arr[i]
					swapped = true
				end
			end
		end

		!swapped && break
	end

	return arr
end

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = cocktailShakerSort(arr)

println("Array Sorted:")

for a in arrSorted
	println(a)
end