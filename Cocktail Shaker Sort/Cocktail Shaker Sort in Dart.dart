// COCKTAIL SHAKER SORT IN DART

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
List<int> cocktailShakerSort(arr)
{
	int beginIndex = 0, endIndex = arr.length;
	bool swapped;

	do
	{
		swapped = false;
		endIndex--;

		for (int i = 0; i < endIndex; i++)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = true;
			}
		}

		if (swapped)
		{
			swapped = false;
			beginIndex++;

			for (int i = endIndex - 1; i >= beginIndex; i--)
			{
				if (arr[i] < arr[i - 1])
				{
					int swap = arr[i];
					arr[i] = arr[i - 1];
					arr[i - 1] = swap;
					swapped = true;
				}
			}
		}
	}
	while (swapped);

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
void main()
{
	List<int> arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	List<int> arrSorted = cocktailShakerSort(arr);

	print("Array Sorted:\n");

	for (int a in arrSorted)
		print(a);
}