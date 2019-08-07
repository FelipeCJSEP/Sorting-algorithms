// SELECTION SORT IN DART

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
List<int> selectionSort(arr)
{
	for (int i = 0; i < arr.length - 1; i++)
	{
		int smaller = i;

		for (int j = i + 1; j < arr.length; j++)
		{
			if (arr[j] < arr[smaller])
				smaller = j;
		}

		if (smaller > i)
		{
			int swap = arr[i];
			arr[i] = arr[smaller];
			arr[smaller] = swap;
		}
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
void main()
{
	List<int> arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	List<int> sortedArr = selectionSort(arr);

	print("Sorted Array:");

	for (int a in sortedArr)
		print(a);
}