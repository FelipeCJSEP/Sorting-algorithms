// COCKTAIL SHAKER SORT IN C#

using System;

namespace Cocktail_Shaker_Sort
{
	class Program
	{
		// function algorithm that returns the sorted array
		// algoritmo da função que retorna o array ordenado
		static int[] cocktailShakerSort(int[] arr)
		{
			int beginIndex = 0, endIndex = arr.Length;
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
        public static void Main(string[] args)
        {
            int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
			int[] sortedArr = cocktailShakerSort(arr);

			Console.WriteLine("Sorted Array:");

			foreach (int a in sortedArr)
				Console.WriteLine(a);
        }
	}
}