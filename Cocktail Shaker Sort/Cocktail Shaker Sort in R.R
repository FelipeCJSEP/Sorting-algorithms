# COCKTAIL SHAKER SORT IN R

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
cocktailShakerSort <- function(arr)
{
	beginIndex <- 1
	endIndex <- length(arr)

	repeat
	{
		swapped <- FALSE
		endIndex <- endIndex - 1

		for (i in beginIndex: endIndex)
		{
			if (arr[i] > arr[i + 1])
			{
				swap <- arr[i]
				arr[i] <- arr[i + 1]
				arr[i + 1] <- swap
				swapped <- TRUE
			}
		}

		if (swapped)
		{
			swapped <- FALSE
			beginIndex <- beginIndex + 1

			for (i in endIndex: beginIndex)
			{
				if (arr[i] < arr[i - 1])
				{
					swap <- arr[i]
					arr[i] <- arr[i - 1]
					arr[i - 1] <- swap
					swapped <- TRUE
				}
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
sortedArr <- cocktailShakerSort(arr)
print("Sorted Array:")

for (i in 1: length(sortedArr))
	print(sortedArr[i])