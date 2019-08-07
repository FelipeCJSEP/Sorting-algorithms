# GNOME SORT IN RUBY

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
def gnomeSort(arr)
	i = 0

	while i < arr.length
		if i > 0 and arr[i] < arr[i - 1] then
			arr[i], arr[i - 1] = arr[i - 1], arr[i]
			i -= 1
		else
			i += 1
		end
	end

	return arr
end

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = Array[5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = gnomeSort(arr)

puts "Sorted Array:\n"
puts sortedArr;