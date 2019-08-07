// BUBBLE SORT IN SCALA

object Bubble_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	def bubbleSort(arr: Array[Int]): Array[Int] = {
		var n: Int = arr.length
		var swapped: Boolean = false

		do
		{
			swapped = false
			n -= 1

			for (i <- 0 to n - 1)
			{
				if (arr(i) > arr(i + 1))
				{
					val swap: Int = arr(i)
					arr(i) = arr(i + 1)
					arr(i + 1) = swap
					swapped = true
				}
			}
		}
		while (swapped)

		return arr
	}

	// main function only to call and test the sort function
	// função principal apenas para chamar e testar a função de ordenação
    def main(args: Array[String])
    {
    	val arr = Array[Int](5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
    	val sortedArr = bubbleSort(arr)

    	println("Sorted Array:")

    	for (a <- sortedArr)
    		println(a)
    }
}