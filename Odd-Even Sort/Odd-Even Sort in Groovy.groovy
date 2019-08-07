// ODD-EVEN SORT IN GROOVY

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int[] oddEvenSort(int[] arr)
{
	while (true)
	{
		boolean swapped = false

		for (int i = 0; i < arr.length - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				arr.swap(i, i + 1)
				swapped = true
			}
		}

		for (int i = 1; i < arr.length - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				arr.swap(i, i + 1)
				swapped = true
			}
		}

		if (!swapped)
			break
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
static void main(String[] args)
{
	int[] arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
	int[] sortedArr = oddEvenSort(arr)

	println("Sorted Array:")

	for (int a in sortedArr)
		println(a)
}