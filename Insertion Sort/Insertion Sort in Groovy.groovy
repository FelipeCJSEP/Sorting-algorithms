// INSERTION SORT IN GROOVY

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int[] insertionSort(int[] arr)
{
	for (int i = 1; i < arr.length; i++)
	{
		int j = i

		while (j > 0 && arr[j] < arr[j - 1])
		{
			arr.swap(j, j - 1)
			j--
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
static void main(String[] args)
{
	int[] arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
	int[] arrSorted = insertionSort(arr)

	println("Array Sorted:")

	for (int a in arrSorted)
		println(a)
}