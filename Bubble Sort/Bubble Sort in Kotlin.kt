// BUBBLE SORT IN KOTLIN

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fun bubbleSort(arr: IntArray): IntArray
{
	for (i: Int in 0..arr.size - 2)
	{
		for (j: Int in i + 1..arr.size - 1)
		{
			if (arr[i] > arr[j])
			{
				val swap: Int = arr[i]
				arr[i] = arr[j]
				arr[j] = swap
			}
		}
	}
	
	return arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fun main()
{
	val arr: IntArray = intArrayOf(5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	val arrSorted: IntArray = bubbleSort(arr);

	println("Array Sorted:")

	for (a: Int in arrSorted)
		println(a)
}