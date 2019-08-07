// SELECTION SORT IN GROOVY

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int[] selectionSort(int[] arr)
{
	for (int i = 0; i < arr.length - 1; i++)
	{
		int smaller = i

		for (int j = i + 1; j < arr.length; j++)
		{
			if (arr[j] < arr[smaller])
				smaller = i;
		}

		if (smaller > i)
			arr.swap(i, smaller)
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
static void main(String[] args)
{
	int[] arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
	int[] sortedArr = selectionSort(arr)

	println("Sorted Array:")

	for (int a in sortedArr)
		println(a)
}