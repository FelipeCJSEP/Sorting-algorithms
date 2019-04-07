// ODD-EVEN SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func oddEvenSort(arr: [Int]) -> [Int]
{
	var arrSorted: [Int] = arr
	var swapped: Bool

	repeat
	{
		swapped = false

		for i in stride(from: 0, to: arrSorted.count - 1, by: 2)
		{
			if arrSorted[i] > arrSorted[i + 1]
			{
				(arrSorted[i], arrSorted[i + 1]) = (arrSorted[i + 1], arrSorted[i])
				swapped = true
			}
		}

		for i in stride(from: 1, to: arrSorted.count - 1, by: 2)
		{
			if arrSorted[i] > arrSorted[i + 1]
			{
				(arrSorted[i], arrSorted[i + 1]) = (arrSorted[i + 1], arrSorted[i])
				swapped = true
			}
		}
	}
	while swapped

	return arrSorted
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let arrSorted: [Int] = oddEvenSort(arr: arr)

print("Array Sorted:")

for a in arrSorted
{
	print(a)
}