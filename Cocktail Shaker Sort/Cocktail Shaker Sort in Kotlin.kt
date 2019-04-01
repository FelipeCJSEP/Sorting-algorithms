// COCKTAIL SHAKER SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun cocktailShakerSort(arr: IntArray): IntArray
{
	var beginIndex: Int = 0
	var endIndex: Int = arr.size

	do
	{
		var swapped: Boolean = false
		endIndex--

		for (i: Int in beginIndex..endIndex - 1)
		{
			if (arr[i] > arr[i + 1])
			{
				val swap = arr[i]
				arr[i] = arr[i + 1]
				arr[i + 1] = swap
				swapped = true
			}
		}

		if (swapped)
		{
			swapped = false
			beginIndex++

			for (i: Int in endIndex - 1 downTo beginIndex)
			{
				if (arr[i] < arr[i - 1])
				{
					val swap = arr[i]
					arr[i] = arr[i - 1]
					arr[i - 1] = swap
					swapped = true
				}
			}
		}
	}
	while (swapped)

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fun main()
{
	val arr: IntArray = intArrayOf(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
	val arrSorted: IntArray = cocktailShakerSort(arr)

	println("Array Sorted:")

	for (a: Int in arrSorted)
		println(a)
}