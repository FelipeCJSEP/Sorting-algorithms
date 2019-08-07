// BUBBLE SORT IN C++

#include <iostream>
using namespace std;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * bubbleSort(int arr[], int arrLength)
{
	int n = arrLength;
	bool swapped;

	do
	{
		swapped = false;
		n--;

		for (int i = 0; i < n; i++)
		{
			if (arr[i] > arr[i + 1])
			{
				int swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = 1;
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
	int *sortedArr;

	sortedArr = bubbleSort(arr, arrLength);

	cout << "Sorted Array:" << endl;

	for (int i = 0; i < arrLength; i++)
		cout << sortedArr[i] << endl;

	return 0;
}