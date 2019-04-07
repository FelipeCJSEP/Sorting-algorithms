# ODD-EVEN SORT IN PYTHON

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
def oddEvenSort(arr):
	while True:
		swapped = False

		for i in range(0, len(arr) - 1, 2):
			if arr[i] > arr[i + 1]:
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = True

		for i in range(1, len(arr) - 1, 2):
			if arr[i] > arr[i + 1]:
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = True

		if not swapped:
			break

	return arr

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = oddEvenSort(arr)

print("Array Sorted:")

for a in arrSorted:
	print(a)