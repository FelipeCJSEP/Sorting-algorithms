// SELECTION SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func selectionSort(arr []int) []int {
	for i := 0; i < len(arr) - 1; i++ {
		var smaller = i

		for j := i + 1; j < len(arr); j++ {
			if arr[j] < arr[smaller] {
				smaller = j
			}
		}

		if smaller > i {
			arr[i], arr[smaller] = arr[smaller], arr[i]
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
func main() {
	var arr = []int {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	var sortedArr []int = selectionSort(arr)

	println("Sorted Array:")

	for _, a := range sortedArr {
		println(a)
	}
}