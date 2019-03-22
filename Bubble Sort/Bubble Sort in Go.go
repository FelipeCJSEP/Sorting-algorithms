// BUBBLE SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func bubbleSort(arr []int) []int {
	for i := 0; i < len(arr) - 1; i++ {
		for j := i + 1; j < len(arr); j++ {
			if (arr[i] > arr[j]) {
				var swap int = arr[i]
				arr[i] = arr[j]
				arr[j] = swap
			}
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
func main() {
	var arr = []int {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	var arrSorted []int = bubbleSort(arr)

	println("Array Sorted:")

	for _, a := range arrSorted {
		println(a)
	}
}