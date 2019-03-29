// BUBBLE SORT IN JAVA

public class Bubble_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	private static int[] bubbleSort(int[] arr)
	{
		int n = arr.length;
		boolean swapped;

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
					swapped = true;
				}
			}
		}
		while (swapped);

		return arr;
	}

	// main function only to call and test the sort function
	// função principal apenas para chamar e testar a função de ordenação
	public static void main(String[] args)
	{
		int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
		int[] arrSorted = bubbleSort(arr);

		System.out.println("Array Sorted:");

		for (int a: arrSorted)
			System.out.println(a);
	}
}