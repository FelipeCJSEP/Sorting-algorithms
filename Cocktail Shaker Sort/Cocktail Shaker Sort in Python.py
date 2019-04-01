# COCKTAIL SHAKER SORT IN PYTHON

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
def cocktailShakerSort(arr):
	beginIndex, endIndex = 0, len(arr)

	while True:
		swapped = False
		endIndex -= 1

		for i in range(beginIndex, endIndex):
			if arr[i] > arr[i + 1]:
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = True

		if swapped == True:
			swapped = False
			beginIndex += 1

			for i in range(endIndex - 1, beginIndex - 1, -1):
				if arr[i] < arr[i - 1]:
					arr[i], arr[i - 1] = arr[i - 1], arr[i]
					swapped = True

		if (swapped == False):
			break

	return arr

# code only to call and test the sort function
# codigo apenas para chamar e testar a funcao de ordenacao
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
arrSorted = cocktailShakerSort(arr)

print("Array Sorted:")

for a in arrSorted:
	print(a)