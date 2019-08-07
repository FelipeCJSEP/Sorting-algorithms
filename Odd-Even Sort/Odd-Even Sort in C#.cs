// ODD-EVEN SORT IN C#

using System;

namespace Odd_Even_Sort
{
	class Program
	{
		// function algorithm that returns the sorted array
		// algoritmo da função que retorna o array ordenado
		static int[] oddEvenSort(int[] arr)
		{
			bool swapped;

			do
			{
				swapped = false;

				for (int i = 0; i < arr.Length - 1; i += 2)
				{
					if (arr[i] > arr[i + 1])
					{
						int swap = arr[i];
						arr[i] = arr[i + 1];
						arr[i + 1] = swap;
						swapped = true;
					}
				}

				for (int i = 1; i < arr.Length - 1; i += 2)
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
        static void Main(string[] args)
        {
            int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
			int[] sortedArr = oddEvenSort(arr);

			Console.WriteLine("Sorted Array:");

			foreach (int a in sortedArr)
				Console.WriteLine(a);
        }
	}
}