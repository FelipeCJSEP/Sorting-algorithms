# BINARY INSERTION SORT SORT IN R

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
binaryInsertionSort <- function(arr)
{
	for (i in 2: length(arr))
	{
		selected <- arr[i]
		first <- 1
		last <- i - 1

		while (first <= last)
		{
			mid <- (first + last) %/% 2

			if (selected > arr[mid])
				first <- mid + 1
			else
				last <- mid - 1
		}

		if (selected > arr[mid])
			mid <- mid + 1

		j <- i - 1

		while (j >= mid)
		{
			arr[j + 1] <- arr[j]
			j <- j - 1
		}

		arr[j + 1] <- selected
	}

	return (arr)
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr <- c(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
sortedArr <- binaryInsertionSort(arr)
print("Sorted Array:")

for (i in 1: length(sortedArr))
	print(sortedArr[i])
