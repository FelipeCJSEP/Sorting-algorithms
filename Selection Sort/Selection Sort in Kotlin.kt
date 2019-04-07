// SELECTION SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun selectionSort(arr: IntArray): IntArray
{
	for (i: Int in 0..arr.size - 2)
	{
		var smaller: Int = i

		for (j: Int in i + 1..arr.size - 1)
		{
			if (arr[j] < arr[smaller])
				smaller = j
		}

		if (smaller > i)
		{
			val swap: Int = arr[i]
			arr[i] = arr[smaller]
			arr[smaller] = swap
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fun main()
{
	val arr: IntArray = intArrayOf(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
	val arrSorted: IntArray = selectionSort(arr)

	println("Array Sorted:")

	for (a: Int in arrSorted)
		println(a)
}