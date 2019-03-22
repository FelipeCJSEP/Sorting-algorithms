// BUBBLE SORT IN JAVA

public class Main
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	private static int[] bubbleSort(int[] arr)
	{
		for (int i = 0; i < arr.length - 1; i++)
		{
			for (int j = i + 1; j < arr.length; j++)
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
	public static void main(String[] args)
	{
		int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
		int[] arrSorted = bubbleSort(arr);

		System.out.println("Array Sorted:");

		for (int a: arrSorted)
			System.out.println(a);
	}
}