// GNOME SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func gnomeSort(arr []int) []int {
	var i = 0

	for (i < len(arr)) {
		if (i > 0 && arr[i] < arr[i - 1]) {
			arr[i], arr[i - 1] = arr[i - 1], arr[i]
			i--
		} else {
			i++
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
func main() {
	var arr = []int {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	var sortedArr []int = gnomeSort(arr)

	println("Sorted Array:")

	for _, a := range sortedArr {
		println(a)
	}
}