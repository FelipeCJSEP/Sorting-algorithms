// ODD-EVEN SORT IN C++

#include <iostream>
using namespace std;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * oddEvenSort(int arr[], int arrLength)
{
	bool swapped;

	do
	{
		swapped = false;

		for (int i = 0; i < arrLength - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = true;
			}
		}

		for (int i = 1; i < arrLength - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = true;
			}
		}
	}
	while (swapped);

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
int main(void)
{
	int arr[10] = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	int arrLength = sizeof(arr) / sizeof(arr[0]);
	int *arrSorted;

	arrSorted = oddEvenSort(arr, arrLength);

	cout << "Array Sorted:" << endl;

	for (int i = 0; i < arrLength; i++)
		cout << arrSorted[i] << endl;

	return 0;
}