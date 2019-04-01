# BUBBLE SORT IN RUBY

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
def cocktailShakerSort(arr)
	beginIndex, endIndex = 0, arr.length

	begin
		swapped = false
		endIndex -= 1

		for i in beginIndex..endIndex - 1
			if arr[i] > arr[i + 1] then
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end

		if swapped then
			swapped = 0
			beginIndex += 1

			for i in (endIndex - 1).downto beginIndex
				if arr[i] < arr[i - 1] then
					arr[i], arr[i - 1] = arr[i - 1], arr[i]
					swapped = true
				end
			end
		end
	end while swapped

	return arr
end

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = Array[5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = cocktailShakerSort(arr)

puts "Array Sorted:\n"
puts arrSorted;