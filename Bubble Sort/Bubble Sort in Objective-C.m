// BUBBLE SORT IN OBJECTIVE-C

#define length 10 // constant to set array size // constante para definir o tamanho do array

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * bubbleSort(int arr[])
{
	int i, j;

	for (i = 0; i < length - 1; i++)
	{
		for (j = i + 1; j < length; j++)
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
int main(int argc, const char * argv[])
{
	int arr[length] = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	int *arrSorted;
	int i;

	arrSorted = bubbleSort(arr);

	printf("Array Sorted:\n");

	for (i = 0; i < length; i++)
		printf("%d\n", arrSorted[i]);

	return 0;
}