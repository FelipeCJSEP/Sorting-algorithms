// COCKTAIL SHAKER SORT IN OBJECTIVE-C

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * cocktailShakerSort(int arr[], int arrLength)
{
	int beginIndex = 0, endIndex = arrLength, swapped;

	do
	{
		int i;

		swapped = 0;
		endIndex--;

		for (i = beginIndex; i < endIndex; i++)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = 1;
			}
		}

		if (swapped == 1)
		{
			swapped = 0;
			beginIndex++;

			for (i = endIndex - 1; i >= beginIndex; i--)
			{
				if (arr[i] < arr[i - 1])
				{
					int swap = arr[i];
					arr[i] = arr[i - 1];
					arr[i - 1] = swap;
					swapped = 1;
				}
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

	arrSorted = cocktailShakerSort(arr, arrLength);

	printf("Array Sorted:\n");

	for (i = 0; i < arrLength; i++)
		printf("%d\n", arrSorted[i]);

	return 0;
}