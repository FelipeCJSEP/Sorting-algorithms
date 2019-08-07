// GNOME SORT IN DART

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
List<int> gnomeSort(arr)
{
	int i = 0;

	while (i < arr.length)
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
void main()
{
	List<int> arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	List<int> sortedArr = gnomeSort(arr);

	print("Sorted Array:");

	for (int a in sortedArr)
		print(a);
}