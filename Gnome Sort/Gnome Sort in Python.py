# GNOME SORT IN PYTHON

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
def gnomeSort(arr):
	i = 0;

	while i < len(arr):
		if i > 0 and arr[i] < arr[i - 1]:
			arr[i], arr[i - 1] = arr[i - 1], arr[i]
			i -= 1
		else:
			i += 1

	return arr

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
sortedArr = gnomeSort(arr)

print("Sorted Array:")

for a in sortedArr:
	print(a)