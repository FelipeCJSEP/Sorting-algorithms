// BUBBLE SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun bubbleSort(arr: IntArray): IntArray
{
	var n: Int = arr.size

	do
	{
		var swapped = false
		n--

		for (i: Int in 0..n - 1)
		{
			if (arr[i] > arr[i + 1])
			{
				val swap: Int = arr[i]
				arr[i] = arr[i + 1]
				arr[i + 1] = swap
				swapped = true
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
	val sortedArr: IntArray = bubbleSort(arr)

	println("Sorted Array:")

	for (a: Int in sortedArr)
		println(a)
}