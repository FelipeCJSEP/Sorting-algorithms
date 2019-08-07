# INSERTION SORT IN PYTHON

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
def insertionSort(arr):
	for i in range(1, len(arr)):
		j = i

		while j > 0 and arr[j] < arr[j - 1]:
			arr[j], arr[j - 1] = arr[j - 1], arr[j]
			j -= 1

	return arr

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = insertionSort(arr)

print("Sorted Array:")

for a in sortedArr:
	print(a)