// BUBBLE SORT IN C++

#include <iostream>
using namespace std;

#define length 10 // constant to set array size // constante para definir o tamanho do array

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
int * bubbleSort(int arr[])
{
	for (int i = 0; i < length - 1; i++)
	{
		for (int j = i + 1; j < length; j++)
		{
			if (arr[i] > arr[j])
			{
				int swap = arr[i];
				arr[i] = arr[j];
				arr[j] = swap;
			}
		}
	}

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
int main(void)
{
	int arr[length];
	int *arrSorted;

	for (int i = 0; i < length; i++)
		cin >> arr[i];

	arrSorted = bubbleSort(arr);

	cout << endl << "Array Sorted:" << endl;

	for (int i = 0; i < length; i++)
		cout << arrSorted[i] << endl;

	return 0;
}