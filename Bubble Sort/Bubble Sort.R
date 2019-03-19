#BUBBLE SORT IN R

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
bubbleSort <- function(arr)
{
	for (i in 1: (length(arr) - 1))
	{
		for (j in (i + 1): length(arr))
		{
			if (arr[i] > arr[j])
			{
				swap = arr[i]
				arr[i] = arr[j]
				arr[j] = swap
			}
		}
	}

	return (arr)
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr <- c(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
arrSorted = bubbleSort(arr)
print("Array Sorted:")

for (i in 1: length(arrSorted))
{
	print(arrSorted[i])
}