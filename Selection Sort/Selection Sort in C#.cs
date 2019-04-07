// SELECTION SORT IN C#

using System;

namespace Odd_Even_Sort
{
	class Program
	{
		// function algorithm that returns the sorted array
		// algoritmo da função que retorna o array ordenado
		static int[] selectionSort(int[] arr)
		{
			for (int i = 0; i < arr.Length - 1; i++)
			{
				int smaller = i;

				for (int j = i + 1; j < arr.Length; j++)
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
        static void Main(string[] args)
        {
            int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
			int[] arrSorted = selectionSort(arr);

			Console.WriteLine("Array Sorted:");

			foreach (int a in arrSorted)
				Console.WriteLine(a);
        }
	}
}