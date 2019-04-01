// COCKTAIL SHAKER SORT IN GROOVY

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int[] cocktailShakerSort(int[] arr)
{
	int beginIndex = 0, endIndex = arr.length

	while (true)
	{
		boolean swapped = false
		endIndex--

		for (int i = beginIndex; i < endIndex; i++)
		{
			if (arr[i] > arr[i + 1])
			{
				arr.swap(i, i + 1)
				swapped = true
			}
		}

		if (swapped)
		{
			swapped = false
			beginIndex++

			for (i = endIndex - 1; i >= beginIndex; i--)
			{
				if (arr[i] < arr[i - 1])
				{
					arr.swap(i, i - 1)
					swapped = true
				}
			}
		}

		if (!swapped)
			break
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
static void main(String[] args)
{
	int[] arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
	int[] arrSorted = cocktailShakerSort(arr)

	println("Array Sorted:")

	for (int a in arrSorted)
		println(a)
}