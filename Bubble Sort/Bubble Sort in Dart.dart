// BUBBLE SORT IN DART

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int bubbleSort(arr)
{
	for (int i = 0; i < arr.length - 1; i++)
	{
		for (int j = i + 1; j < arr.length; j++)
		{
			if (arr[i] > arr[j])
			{
				int swap = arr[i];
				arr[i] = arr[j];
				arr[j] = swap;
			}
		}
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
void main()
{
	int arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	int arrSorted = bubbleSort(arr);

	print("Array Sorted:\n");

	for (int a in arrSorted)
		print(a);
}