// ODD-EVEN SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun oddEvenSort(arr: IntArray): IntArray
{
	do
	{
		var swapped: Boolean = false

		for (i: Int in 0..arr.size - 2 step 2)
		{
			if (arr[i] > arr[i + 1])
			{
				val swap = arr[i]
				arr[i] = arr[i + 1]
				arr[i + 1] = swap
				swapped = true
			}
		}

		for (i: Int in 1..arr.size - 2 step 2)
		{
			if (arr[i] > arr[i + 1])
			{
				val swap = arr[i]
				arr[i] = arr[i + 1]
				arr[i + 1] = swap
				swapped = true
			}
		}
	}
	while (swapped);

	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fun main()
{
	val arr: IntArray = intArrayOf(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
	val sortedArr: IntArray = oddEvenSort(arr)

	println("Sorted Array:")

	for (a: Int in sortedArr)
		println(a)
}