# BUBBLE SORT IN PYTHON

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
def bubbleSort(arr):
	n = len(arr)

	while True:
		swapped = False
		n -= 1

		for i in range(n):
			if arr[i] > arr[i + 1]:
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = True

		if not swapped:
			break

	return arr

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = bubbleSort(arr)

print("Sorted Array:")

for a in sortedArr:
	print(a)