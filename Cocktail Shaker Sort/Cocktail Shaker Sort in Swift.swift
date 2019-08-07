// COCKTAIL SHARK SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func cocktailShakerSort(arr: [Int]) -> [Int]
{
	var sortedArr: [Int] = arr
	var beginIndex: Int = 0
	var endIndex: Int = arr.count
	var swapped: Bool

	repeat
	{
		swapped = false
		endIndex -= 1

		for i in beginIndex...endIndex - 1
		{
			if sortedArr[i] > sortedArr[i + 1]
			{
				(sortedArr[i], sortedArr[i + 1]) = (sortedArr[i + 1], sortedArr[i])
				swapped = true
			}
		}

		if swapped
		{
			swapped = false
			beginIndex += 1

			for i in stride(from: endIndex - 1, to: beginIndex - 1, by: -1)
			{
				if sortedArr[i] < sortedArr[i - 1]
				{
					(sortedArr[i], sortedArr[i - 1]) = (sortedArr[i - 1], sortedArr[i])
					swapped = true
				}
			}
		}
	}
	while swapped

	return sortedArr
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let sortedArr: [Int] = cocktailShakerSort(arr: arr)

print("Sorted Array:")

for a in sortedArr
{
	print(a)
}