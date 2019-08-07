// INSERTION SORT IN C#

using System;

namespace Insertion_Sort
{
	class Program
	{
		// function algorithm that returns the sorted array
		// algoritmo da função que retorna o array ordenado
		static int[] insertionSort(int[] arr)
		{
			for (int i = 1; i < arr.Length; i++)
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
        public static void Main(string[] args)
        {
            int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
			int[] sortedArr = insertionSort(arr);

			Console.WriteLine("Sorted Array:");

			foreach (int a in sortedArr)
				Console.WriteLine(a);
        }
	}
}