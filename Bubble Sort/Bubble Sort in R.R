# BUBBLE SORT IN R

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
bubbleSort <- function(arr)
{
	n <- length(arr)

	repeat
	{
		swapped <- FALSE
		n <- n - 1

		for (i in 1: n)
		{
			if (arr[i] > arr[i + 1])
			{
				swap <- arr[i]
				arr[i] <- arr[i + 1]
				arr[i + 1] <- swap
				swapped <- TRUE
			}
		}

		if (!swapped)
			break
	}

	return (arr)
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr <- c(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
sortedArr <- bubbleSort(arr)
print("Sorted Array:")

for (i in 1: length(sortedArr))
	print(sortedArr[i])