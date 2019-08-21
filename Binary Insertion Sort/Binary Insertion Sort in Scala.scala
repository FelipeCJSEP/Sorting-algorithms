// BINARY INSERTION SORT IN SCALA

object Binary_Insertion_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	def binaryInsertionSort(arr: Array[Int]): Array[Int] = {
		for (i <- 1 to arr.length - 1)
		{
			val selected = arr(i)
			var first = 0
			var last = i - 1
			var mid = 0

			while (first <= last)
			{
				mid = (first + last) / 2

				if (selected > arr(mid))
					first = mid + 1
				else
					last = mid - 1
			}

			if (selected > arr(mid))
				mid += 1

			var j = i - 1

			while (j >= mid)
			{
				arr(j + 1) = arr(j)
				j -= 1
			}

			arr(j + 1) = selected
		}

		return arr
	}

	// main function only to call and test the sort function
	// função principal apenas para chamar e testar a função de ordenação
    def main(args: Array[String])
    {
    	val arr = Array[Int](5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
    	val sortedArr = binaryInsertionSort(arr)

    	println("Sorted Array:")

    	for (a <- sortedArr)
    		println(a)
    }
}
