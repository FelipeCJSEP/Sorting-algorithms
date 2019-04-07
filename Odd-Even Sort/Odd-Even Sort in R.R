# ODD-EVEN SORT IN R

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
oddEvenSort <- function(arr)
{
	repeat
	{
		swapped <- FALSE

		for (i in seq(1, length(arr) - 1, 2))
		{
			if (arr[i] > arr[i + 1])
			{
				swap <- arr[i]
				arr[i] <- arr[i + 1]
				arr[i + 1] <- swap
				swapped = TRUE
			}
		}

		for (i in seq(2, length(arr) - 1, 2))
		{
			if (arr[i] > arr[i + 1])
			{
				swap <- arr[i]
				arr[i] <- arr[i + 1]
				arr[i + 1] <- swap
				swapped = TRUE
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
arrSorted <- oddEvenSort(arr)
print("Array Sorted:")

for (i in 1: length(arrSorted))
	print(arrSorted[i])