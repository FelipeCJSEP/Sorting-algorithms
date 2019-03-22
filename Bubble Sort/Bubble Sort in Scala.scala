// BUBBLE SORT IN SCALA

object Bubble_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	def bubbleSort(arr: Array[Int]) : Array[Int] = {
		for (i <- 0 to arr.length - 2)
		{
			for (j <- i + 1 to arr.length - 1)
			{
				if (arr(i) > arr(j))
				{
					var swap: Int = arr(i);
					arr(i) = arr(j);
					arr(j) = swap;
				}
			}
		}

		return arr
	}

	// main function only to call and test the sort function
	// função principal apenas para chamar e testar a função de ordenação
    def main(args: Array[String])
    {
    	var arr = Array[Int](5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
    	var arrSorted = bubbleSort(arr)

    	println("Array Sorted:")

    	for (a <- arrSorted)
    		println(a)
    }
}