# GNOME SORT SORT IN R

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
gnomeSort <- function(arr)
{
	i <- 1

	while (i <= length(arr))
	{
		if (i > 1 && arr[i] < arr[i - 1])
		{
			swap <- arr[i]
			arr[i] <- arr[i - 1]
			arr[i - 1] <- swap
			i <- i - 1
		}
		else
			i <- i + 1
	}

	return (arr)
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr <- c(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
sortedArr <- gnomeSort(arr)
print("Sorted Array:")

for (i in 1: length(sortedArr))
	print(sortedArr[i])