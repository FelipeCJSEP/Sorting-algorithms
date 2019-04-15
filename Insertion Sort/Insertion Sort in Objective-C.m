// INSERTION SORT IN OBJECTIVE-C

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * insertionSort(int arr[], int arrLength)
{
	int i;

	for (i = 1; i < arrLength; i++)
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
int main(int argc, const char * argv[])
{
	int arr[10] = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	int arrLength = sizeof(arr) / sizeof(arr[0]);
	int *arrSorted;
	int i;

	arrSorted = insertionSort(arr, arrLength);

	printf("Array Sorted:\n");

	for (i = 0; i < arrLength; i++)
		printf("%d\n", arrSorted[i]);

	return 0;
}