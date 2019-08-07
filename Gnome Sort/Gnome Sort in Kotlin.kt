// GNOME SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun gnomeSort(arr: IntArray): IntArray
{
	var i: Int = 0

	while (i < arr.size)
	{
		if (i > 0 && arr[i] < arr[i - 1])
		{
			val swap: Int = arr[i]
			arr[i] = arr[i - 1]
			arr[i - 1] = swap
			i--
		}
		else
			i++
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fun main()
{
	val arr: IntArray = intArrayOf(5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
	val sortedArr: IntArray = gnomeSort(arr)

	println("Sorted Array:")

	for (a: Int in sortedArr)
		println(a)
}