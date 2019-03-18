# BUBBLE SORT IN PYTHON

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
def bubbleSort(arr):
	for i in range(len(arr) - 1):
		for j in range(i + 1, len(arr)):
			if arr[i] > arr[j]:
				swap = arr[i]
				arr[i] = arr[j]
				arr[j] = swap
	return arr

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = []

for i in range(10):
	arr.append(input())

arrSorted = bubbleSort(arr)

print("\nArray Sorted:")

for a in arrSorted:
	print(a)