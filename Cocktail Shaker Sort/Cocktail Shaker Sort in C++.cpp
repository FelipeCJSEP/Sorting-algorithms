// COCKTAIL SHAKER SORT IN C++

#include <iostream>
using namespace std;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * cocktailShakerSort(int arr[], int arrLength)
{
	int beginIndex = 0, endIndex = arrLength;
	bool swapped;

	do
	{
		swapped = false;
		endIndex--;

		for (int i = beginIndex; i < endIndex; i++)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = true;
			}
		}

		if (swapped)
		{
			swapped = false;
			beginIndex++;

			for (int i = endIndex - 1; i >= beginIndex; i--)
			{
				if (arr[i] < arr[i - 1])
				{
					int swap = arr[i];
					arr[i] = arr[i - 1];
					arr[i - 1] = swap;
					swapped = true;
				}
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

	arrSorted = cocktailShakerSort(arr, arrLength);

	cout << "Array Sorted:" << endl;

	for (int i = 0; i < arrLength; i++)
		cout << arrSorted[i] << endl;

	return 0;
}