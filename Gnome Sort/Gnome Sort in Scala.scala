// GNOME SORT IN SCALA

object Gnome_Sort
{
	// function algorithm that returns the sorted array
	// algoritmo da função que retorna o array ordenado
	def gnomeSort(arr: Array[Int]): Array[Int] = {
		var i = 0

		while (i < arr.length)
		{
			if (i > 0 && arr(i) < arr(i - 1))
			{
				val swap = arr(i)
				arr(i) = arr(i - 1)
				arr(i - 1) = swap
				i -= 1
			}
			else
				i += 1
		}

		return arr
	}

	// main function only to call and test the sort function
	// função principal apenas para chamar e testar a função de ordenação
    def main(args: Array[String])
    {
    	val arr = Array[Int](5, 2, -3, 10, 23, 99, -1, 7, 93, 0)
    	val sortedArr = gnomeSort(arr)

    	println("Sorted Array:")

    	for (a <- sortedArr)
    		println(a)
    }
}