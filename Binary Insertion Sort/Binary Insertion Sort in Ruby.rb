# BINARY INSERTION SORT IN RUBY

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
def binaryInsertionSort(arr)
	for i in 1..arr.length - 1
		selected = arr[i]
		first = 0
		last = i - 1

		while first <= last
			mid = (first + last) / 2

			if selected > arr[mid] then
				first = mid + 1
			else
				last = mid - 1
			end
		end

		if selected > arr[mid] then
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
# codigo apenas para chamar e testar a funcao de ordenacao
arr = Array[5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = binaryInsertionSort(arr)

puts "Sorted Array:\n"
puts sortedArr;