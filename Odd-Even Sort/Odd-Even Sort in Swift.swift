// ODD-EVEN SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func oddEvenSort(arr: [Int]) -> [Int]
{
	var sortedArr: [Int] = arr
	var swapped: Bool

	repeat
	{
		swapped = false

		for i in stride(from: 0, to: sortedArr.count - 1, by: 2)
		{
			if sortedArr[i] > sortedArr[i + 1]
			{
				(sortedArr[i], sortedArr[i + 1]) = (sortedArr[i + 1], sortedArr[i])
				swapped = true
			}
		}

		for i in stride(from: 1, to: sortedArr.count - 1, by: 2)
		{
			if sortedArr[i] > sortedArr[i + 1]
			{
				(sortedArr[i], sortedArr[i + 1]) = (sortedArr[i + 1], sortedArr[i])
				swapped = true
			}
		}
	}
	while swapped

	return sortedArr
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let sortedArr: [Int] = oddEvenSort(arr: arr)

print("Sorted Array:")

for a in sortedArr
{
	print(a)
}