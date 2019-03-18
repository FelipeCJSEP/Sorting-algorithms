// BUBBLE SORT IN C#

using System;

namespace Bubble_Sort
{
	class Program
	{
		// function algorithm that returns the sorted array
		// algoritmo da função que retorna o array ordenado
		static int[] bubbleSort(int[] arr)
		{
			for (int i = 0; i < arr.Length - 1; i++)
			{
				for (int j = i + 1; j < arr.Length; j++)
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
		static void Main(string[] args)
		{
			int[] arr = new int[10], arrSorted;

			for (int i = 0; i < arr.Length; i++)
				arr[i] = int.Parse(Console.ReadLine());

			arrSorted = bubbleSort(arr);

			Console.WriteLine("\nArray Sorted:");

			foreach (int a in arrSorted)
				Console.WriteLine(a);
		}
	}
}