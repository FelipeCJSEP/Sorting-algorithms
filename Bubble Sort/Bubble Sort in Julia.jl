# BUBBLE SORT IN JULIA

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
function bubbleSort(arr)
	n = length(arr)

	while true
		swapped = false
		n -= 1

		for i = 1: n
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end

		!swapped && break
	end

	return arr
end

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = bubbleSort(arr)

println("Sorted Array:")

for a in sortedArr
	println(a)
end