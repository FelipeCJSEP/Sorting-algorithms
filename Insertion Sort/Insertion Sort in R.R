# INSERTION SORT SORT IN R

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
insertionSort <- function(arr)
{
	for (i in 2: length(arr))
	{
		j <- i

		while (j > 1 && arr[j] < arr[j - 1])
		{
			swap <- arr[j]
			arr[j] <- arr[j - 1]
			arr[j - 1] <- swap
			j <- j - 1
		}
	}

	return (arr)
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr <- c(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
sortedArr <- insertionSort(arr)
print("Sorted Array:")

for (i in 1: length(sortedArr))
	print(sortedArr[i])