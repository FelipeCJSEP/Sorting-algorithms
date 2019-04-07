// ODD-EVEN SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func oddEvenSort(arr []int) []int {
	for {
		var swapped = false

		for i := 0; i < len(arr) - 1; i += 2 {
			if arr[i] > arr[i + 1] {
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			}
		}

		for i := 1; i < len(arr) - 1; i += 2 {
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
	var arrSorted []int = oddEvenSort(arr)

	println("Array Sorted:")

	for _, a := range arrSorted {
		println(a)
	}
}