// INSERTION SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func insertionSort(arr []int) []int {
	for i := 1; i < len(arr); i++ {
		var j = i

		for (j > 0 && arr[j] < arr[j - 1]) {
			arr[j], arr[j - 1] = arr[j - 1], arr[j]
			j--
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
func main() {
	var arr = []int {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	var arrSorted []int = insertionSort(arr)

	println("Array Sorted:")

	for _, a := range arrSorted {
		println(a)
	}
}