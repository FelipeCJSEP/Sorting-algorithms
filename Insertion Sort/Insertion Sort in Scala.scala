// INSERTION SORT IN SCALA

object Cocktail_Shaker_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	def insertionSort(arr: Array[Int]): Array[Int] = {
		for (i <- 1 to arr.length - 1)
		{
			var j = i

			while (j > 0 && arr(j) < arr(j - 1))
			{
				val swap: Int = arr(j)
				arr(j) = arr(j - 1)
				arr(j - 1) = swap
				j -= 1
			}
		}

		return arr
	}

	// main function only to call and test the sort function
	// função principal apenas para chamar e testar a função de ordenação
    def main(args: Array[String])
    {
    	val arr = Array[Int](5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
    	val sortedArr = insertionSort(arr)

    	println("Sorted Array:")

    	for (a <- sortedArr)
    		println(a)
    }
}