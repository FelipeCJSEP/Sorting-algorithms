# ODD-EVEN SORT IN RUBY

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
def oddEvenSort(arr)
	begin
		swapped = false

		for i in (0..arr.length - 2).step(2)
			if arr[i] > arr[i + 1] then
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end

		for i in (1..arr.length - 2).step(2)
			if arr[i] > arr[i + 1] then
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end
	end while swapped

	return arr
end

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = Array[5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = oddEvenSort(arr)

puts "Sorted Array:\n"
puts sortedArr;