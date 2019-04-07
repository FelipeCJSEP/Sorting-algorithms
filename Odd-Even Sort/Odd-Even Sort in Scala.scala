// ODD-EVEN SORT IN SCALA

object Odd_Even_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	def oddEvenSort(arr: Array[Int]): Array[Int] = {
		var swapped = false

		do
		{
			swapped = false

			for (i <- 0 to arr.length - 2 by 2)
			{
				if (arr(i) > arr(i + 1))
				{
					val swap: Int = arr(i)
					arr(i) = arr(i + 1)
					arr(i + 1) = swap
					swapped = true
				}
			}

			for (i <- 1 to arr.length - 2 by 2)
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
    	val arrSorted = oddEvenSort(arr)

    	println("Array Sorted:")

    	for (a <- arrSorted)
    		println(a)
    }
}