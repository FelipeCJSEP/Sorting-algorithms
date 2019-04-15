// INSERTION SORT IN DART

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
List<int> insertionSort(arr)
{
	for (int i = 1; i < arr.length; i++)
	{
		int j = i;

		while (j > 0 && arr[j] < arr[j - 1])
		{
			int swap = arr[j];
			arr[j] = arr[j - 1];
			arr[j - 1] = swap;
			j--;
		}
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
void main()
{
	List<int> arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	List<int> arrSorted = insertionSort(arr);

	print("Array Sorted:");

	for (int a in arrSorted)
		print(a);
}