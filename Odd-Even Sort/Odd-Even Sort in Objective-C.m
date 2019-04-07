// ODD-EVEN SORT IN OBJECTIVE-C

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * oddEvenSort(int arr[], int arrLength)
{
	int swapped;

	do
	{
		int i;

		swapped = 0;

		for (i = 0; i < arrLength - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = 1;
			}
		}

		for (i = 1; i < arrLength - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = 1;
			}
		}
	}
	while (swapped == 1);

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

	arrSorted = oddEvenSort(arr, arrLength);

	printf("Array Sorted:\n");

	for (i = 0; i < arrLength; i++)
		printf("%d\n", arrSorted[i]);

	return 0;
}