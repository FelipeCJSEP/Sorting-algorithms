// BINARY INSERTION SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun binaryInsertionSort(arr: IntArray): IntArray
{
	for (i: Int in 0..arr.size - 1)
	{
		val selected: Int = arr[i]
		var first: Int = 0
		var last: Int = i - 1
		var mid: Int = 0
		var j: Int

		while (first <= last)
		{
			mid = (first + last) / 2

			if (selected > arr[mid])
				first = mid + 1
			else
				last = mid - 1
		}

		if (selected > arr[mid])
			mid++

		j = i - 1

		while (j >= mid)
		{
			arr[j + 1] = arr[j]
			j--
		}

		arr[j + 1] = selected
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fun main()
{
	val arr: IntArray = intArrayOf(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
	val sortedArr: IntArray = binaryInsertionSort(arr)

	println("Sorted Array:")

	for (a: Int in sortedArr)
		println(a)
}