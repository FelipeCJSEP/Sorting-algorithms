// GNOME SORT IN C#

using System;

namespace Gnome_Sort
{
	class Program
	{
		// function algorithm that returns the sorted array
		// algoritmo da função que retorna o array ordenado
		static int[] gnomeSort(int[] arr)
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
			int[] arrSorted = gnomeSort(arr);

			Console.WriteLine("Array Sorted:");

			foreach (int a in arrSorted)
				Console.WriteLine(a);
        }
	}
}