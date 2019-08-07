// COCKTAIL SHAKER SORT IN SCALA

object Cocktail_Shaker_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	def cocktailShakerSort(arr: Array[Int]): Array[Int] = {
		var beginIndex = 0
		var endIndex = arr.length
		var swapped = false

		do
		{
			swapped = false
			endIndex -= 1

			for (i <- beginIndex to endIndex - 1)
			{
				if (arr(i) > arr(i + 1))
				{
					val swap: Int = arr(i)
					arr(i) = arr(i + 1)
					arr(i + 1) = swap
					swapped = true
				}
			}

			if (swapped)
			{
				swapped = false
				beginIndex += 1

				for (i <- endIndex - 1 to beginIndex by -1)
				{
					if (arr(i) < arr(i - 1))
					{
						val swap: Int = arr(i)
						arr(i) = arr(i - 1)
						arr(i - 1) = swap
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
    def main(args: Array[String])
    {
    	val arr = Array[Int](5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
    	val sortedArr = cocktailShakerSort(arr)

    	println("Sorted Array:")

    	for (a <- sortedArr)
    		println(a)
    }
}