// GNOME SORT IN D

import std.stdio;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int[] gnomeSort(int[] arr)
{
	for (int i = 1; i < arr.length; i++)
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
void main(string[] args)
{
	int[] arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	int[] arrSorted = gnomeSort(arr);

	writeln("Array Sorted:");

	foreach (a; arrSorted)
		writeln(a);
}