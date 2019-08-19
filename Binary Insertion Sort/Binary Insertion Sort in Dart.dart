// BINARY INSERTION SORT IN DART

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
List<int> binaryInsertionSort(arr)
{
	for (int i = 1; i < arr.length; i++)
	{
		int selected = arr[i], first = 0, last = i - 1, mid, j;

		while (first <= last)
		{
			mid = (first + last) ~/ 2;

			if (selected > arr[mid])
				first = mid + 1;
			else
				last = mid - 1;
		}

		if (selected > arr[mid])
			mid++;

		for (j = i - 1; j >= mid; j--)
			arr[j + 1] = arr[j];

		arr[j + 1] = selected;
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
void main()
{
	List<int> arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	List<int> sortedArr = binaryInsertionSort(arr);

	print("Sorted Array:");

	for (int a in sortedArr)
		print(a);
}