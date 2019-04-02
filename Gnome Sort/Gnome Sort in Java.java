// GNOME SORT IN JAVA

public class Cocktail_Shaker_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	private static int[] gnomeSort(int[] arr)
	{
		for (int i = 1; i < arr.length; i++)
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
	public static void main(String[] args)
	{
		int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
		int[] arrSorted = gnomeSort(arr);

		System.out.println("Array Sorted:");

		for (int a: arrSorted)
			System.out.println(a);
	}
}