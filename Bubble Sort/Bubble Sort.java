// BUBBLE SORT IN JAVA

public class Main
{
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

	public static void main(String[] args)
	{
		int[] arr = new int[10], arrSorted;

		for (int i = 0; i < arr.length; i++)
			arr[i] = Integer.parseInt(System.console().readLine());

		arrSorted = bubbleSort(arr);

		System.out.println("\nArray Sorted:");

		for (int a: arrSorted)
			System.out.println(a);
	}
}