// COCKTAIL SHAKER SORT IN JAVA

public class Cocktail_Shaker_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	private static int[] cocktailShakerSort(int[] arr)
	{
		int beginIndex = 0, endIndex = arr.length;
		boolean swapped;

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
	public static void main(String[] args)
	{
		int[] arr = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
		int[] sortedArr = cocktailShakerSort(arr);

		System.out.println("Sorted Array:");

		for (int a: sortedArr)
			System.out.println(a);
	}
}