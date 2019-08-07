// GNOME SORT IN OBJECTIVE-C

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * gnomeSort(int arr[], int arrLength)
{
	int i = 0;

	while (i < arrLength)
	{
		if (i > 0 && arr[i] < arr[i - 1])
		{
			int swap = arr[i];
			arr[i] = arr[i - 1];
			arr[i - 1] = swap;
			i--;
		}
		else
			i++;
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
int main(int argc, const char * argv[])
{
	int arr[10] = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	int arrLength = sizeof(arr) / sizeof(arr[0]);
	int *sortedArr;
	int i;

	sortedArr = gnomeSort(arr, arrLength);

	printf("Sorted Array:\n");

	for (i = 0; i < arrLength; i++)
		printf("%d\n", sortedArr[i]);

	return 0;
}