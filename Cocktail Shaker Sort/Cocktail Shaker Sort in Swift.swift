// COCKTAIL SHARK SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func cocktailShakerSort(arr: [Int]) -> [Int]
{
	var arrSorted: [Int] = arr
	var beginIndex: Int = 0
	var endIndex: Int = arr.count
	var swapped: Bool

	repeat
	{
		swapped = false
		endIndex -= 1

		for i in beginIndex...endIndex - 1
		{
			if arrSorted[i] > arrSorted[i + 1]
			{
				(arrSorted[i], arrSorted[i + 1]) = (arrSorted[i + 1], arrSorted[i])
				swapped = true
			}
		}

		if swapped == true
		{
			swapped = false
			beginIndex += 1

			for i in stride(from: endIndex - 1, to: beginIndex - 1, by: -1)
			{
				if arrSorted[i] < arrSorted[i - 1]
				{
					(arrSorted[i], arrSorted[i - 1]) = (arrSorted[i - 1], arrSorted[i])
					swapped = true
				}
			}
		}
	}
	while swapped == true

	return arrSorted
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let arrSorted: [Int] = cocktailShakerSort(arr: arr)

print("Array Sorted:")

for a in arrSorted
{
	print(a)
}