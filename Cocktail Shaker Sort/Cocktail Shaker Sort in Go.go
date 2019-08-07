// COCKTAIL SHAKER SORT IN GO

package main

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func cocktailShakerSort(arr []int) []int {
	var beginIndex = 0
	var endIndex = len(arr)

	for {
		var swapped = false
		endIndex--

		for i := beginIndex; i < endIndex; i++ {
			if arr[i] > arr[i + 1] {
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			}
		}

		if swapped {
			swapped = false
			beginIndex++

			for i := endIndex - 1; i >= beginIndex; i-- {
				if arr[i] < arr[i - 1] {
					arr[i], arr[i - 1] = arr[i - 1], arr[i]
					swapped = true
				}
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
	var sortedArr []int = cocktailShakerSort(arr)

	println("Sorted Array:")

	for _, a := range sortedArr {
		println(a)
	}
}