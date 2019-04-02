// GNOME SORT IN C++

#include <iostream>
using namespace std;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * gnomeSort(int arr[], int arrLength)
{
	for (int i = 1; i < arrLength; i++)
	{
		int j = i;

		while (j > 0 and arr[j] < arr[j - 1])
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
int main(void)
{
	int arr[10] = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	int arrLength = sizeof(arr) / sizeof(arr[0]);
	int *arrSorted;

	arrSorted = gnomeSort(arr, arrLength);

	cout << "Array Sorted:" << endl;

	for (int i = 0; i < arrLength; i++)
		cout << arrSorted[i] << endl;

	return 0;
}