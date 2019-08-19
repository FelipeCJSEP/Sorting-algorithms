# BINARY INSERTION SORT IN PYTHON

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
def binaryInsertionSort(arr):
	for i in range(1, len(arr)):
		selected = arr[i]
		first = 0
		last = i - 1

		while first <= last:
			mid = (first + last) // 2

			if selected > arr[mid]:
				first = mid + 1
			else:
				last = mid - 1

		if selected > arr[mid]:
			mid += 1

		j = i - 1
		
		while j >= mid:
			arr[j + 1] = arr[j]
			j -= 1

		arr[j + 1] = selected

	return arr

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = binaryInsertionSort(arr)

print("Sorted Array:")

for a in sortedArr:
	print(a)