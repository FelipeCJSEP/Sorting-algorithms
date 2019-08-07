// BUBBLE SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func bubbleSort(arr: [Int]) -> [Int]
{
	var sortedArr: [Int] = arr
	var n: Int = arr.count
	var swapped: Bool

	repeat
	{
		swapped = false
		n -= 1

		for i in 0...n - 1
		{
			if sortedArr[i] > sortedArr[i + 1]
			{
				(sortedArr[i], sortedArr[i + 1]) = (sortedArr[i + 1], sortedArr[i])
				swapped = true
			}
		}
	}
	while swapped == true

	return sortedArr
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let sortedArr: [Int] = bubbleSort(arr: arr)

print("Sorted Array:")

for a in sortedArr
{
	print(a)
}