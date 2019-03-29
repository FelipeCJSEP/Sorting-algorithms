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
				var swap int = arr[i]
				arr[i] = arr[i + 1]
				arr[i + 1] = swap
				swapped = true;
			}
		}
		
		if !swapped {
			break;
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