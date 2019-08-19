// BINARY INSERTION SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func binaryInsertionSort(arr []int) []int {
	for i := 1; i < len(arr); i++ {
		var selected int = arr[i]
		var first int = 0
		var last int = i - 1
		var mid int
		var j int

		for (first <= last) {
			mid = (first + last) / 2

			if (selected > arr[mid]) {
				first = mid + 1
			} else {
				last = mid - 1
			}
		}

		if (selected > arr[mid]) {
			mid++
		}

		j = i - 1
		
		for (j >= mid) {
			arr[j + 1] = arr[j]
			j--
		}

		arr[j + 1] = selected
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
func main() {
	var arr = []int {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	var sortedArr []int = binaryInsertionSort(arr)

	println("Sorted Array:")

	for _, a := range sortedArr {
		println(a)
	}
}