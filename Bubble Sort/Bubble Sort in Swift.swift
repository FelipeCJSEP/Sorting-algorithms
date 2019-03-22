// BUBBLE SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func bubbleSort(arr: [Int]) -> [Int]
{
	var arrSorted = arr

	for i in 0...arrSorted.count - 2
	{
		for j in i + 1...arrSorted.count - 1
		{
			if arrSorted[i] > arrSorted[j]
			{
				let swap = arrSorted[i]
				arrSorted[i] = arrSorted[j]
				arrSorted[j] = swap
			}
		}
	}

	return arrSorted
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr:[Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let arrSorted:[Int] = bubbleSort(arr: arr)

print("Array Sorted")

for a in arrSorted
{
	print(a)
}