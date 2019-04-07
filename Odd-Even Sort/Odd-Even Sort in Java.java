// ODD-EVEN SORT IN JAVA

public class Main
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	private static int[] oddEvenSort(int[] arr)
	{
		boolean swapped;

		do
		{
			swapped = false;

			for (int i = 0; i < arr.length - 1; i += 2)
			{
				if (arr[i] > arr[i + 1])
				{
					int swap = arr[i];
					arr[i] = arr[i + 1];
					arr[i + 1] = swap;
					swapped = true;
				}
			}

			for (int i = 1; i < arr.length - 1; i += 2)
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
		int[] arrSorted = oddEvenSort(arr);

		System.out.println("Array Sorted:");

		for (int a: arrSorted)
			System.out.println(a);
	}
}