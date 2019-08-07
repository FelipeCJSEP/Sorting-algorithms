// GNOME SORT IN GROOVY

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int[] gnomeSort(int[] arr)
{
	int i = 0

	while (i < arr.length)
	{
		if (i > 0 && arr[i] < arr[i - 1])
		{
			arr.swap(i, i - 1)
			i--
		}
		else
			i++
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
static void main(String[] args)
{
	int[] arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
	int[] sortedArr = gnomeSort(arr)

	println("Sorted Array:")

	for (int a in sortedArr)
		println(a)
}