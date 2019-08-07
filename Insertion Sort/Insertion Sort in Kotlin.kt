// INSERTION SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun insertionSort(arr: IntArray): IntArray
{
	for (i: Int in 0..arr.size - 1)
	{
		var j: Int = i

		while (j > 0 && arr[j] < arr[j - 1])
		{
			val swap: Int = arr[j]
			arr[j] = arr[j - 1]
			arr[j - 1] = swap
			j--
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fun main()
{
	val arr: IntArray = intArrayOf(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
	val sortedArr: IntArray = insertionSort(arr)

	println("Sorted Array:")

	for (a: Int in sortedArr)
		println(a)
}