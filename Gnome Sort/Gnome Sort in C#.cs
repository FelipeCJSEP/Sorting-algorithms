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
			int i = 0;

			while (i < arr.Length)
			{
				if (i > 0 && arr[i] < arr[i - 1])
				{
					int swap = arr[i];
					arr[i] = arr[i - 1];
					arr[i - 1] = swap;
					i--;
				}
				else
					i++;
			}

			return arr;
		}

		// main function only to call and test the sort function
		// função principal apenas para chamar e testar a função de ordenação
        public static void Main(string[] args)
        {
            int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
			int[] sortedArr = gnomeSort(arr);

			Console.WriteLine("Sorted Array:");

			foreach (int a in sortedArr)
				Console.WriteLine(a);
        }
	}
}