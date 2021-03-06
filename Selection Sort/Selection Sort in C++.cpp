// SELECTION SORT IN C++

#include <iostream>
using namespace std;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * selectionSort(int arr[], int arrLength)
{
	for (int i = 0; i < arrLength - 1; i++)
	{
		int smaller = i;

		for (int j = i + 1; j < arrLength; j++)
		{
			if (arr[j] < arr[smaller])
				smaller = j;
		}

		if (smaller > i)
		{
			int swap = arr[i];
			arr[i] = arr[smaller];
			arr[smaller] = swap;
		}
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
int main(void)
{
	int arr[10] = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	int arrLength = sizeof(arr) / sizeof(arr[0]);
	int *sortedArr;

	sortedArr = selectionSort(arr, arrLength);

	cout << "Sorted Array:" << endl;

	for (int i = 0; i < arrLength; i++)
		cout << sortedArr[i] << endl;

	return 0;
}