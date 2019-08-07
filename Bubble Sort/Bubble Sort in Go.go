// BUBBLE SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func bubbleSort(arr []int) []int {
	var n int = len(arr)
	
	for {
		var swapped bool = false
		n--

		for i := 0; i < n; i++ {
			if arr[i] > arr[i + 1] {
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			}
		}
		
		if !swapped {
			break
		}
	}

	return arr
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
func main() {
	var arr = []int {5, 2, -3, 10, 23, 99, -1, 7, 93, 0};
	var sortedArr []int = bubbleSort(arr)

	println("Sorted Array:")

	for _, a := range sortedArr {
		println(a)
	}
}