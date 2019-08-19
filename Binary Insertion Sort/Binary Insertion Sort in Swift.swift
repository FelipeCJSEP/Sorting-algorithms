// BINARY INSERTION SORT IN SWIFT
import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func binaryInsertionSort(arr: [Int]) -> [Int]
{
	var sortedArr: [Int] = arr

	for i in 1...sortedArr.count - 1
	{
		let selected: Int = sortedArr[i]
		var first: Int = 0
		var last: Int = i - 1
		var mid: Int = 0
		var j: Int

		while (first <= last)
		{
			mid = (first + last) / 2

			if (selected > sortedArr[mid])
			{
				first = mid + 1
			}
			else
			{
				last = mid - 1
			}
		}

		if (selected > sortedArr[mid])
		{
			mid += 1
		}

		j = i - 1

		while (j >= mid)
		{
			sortedArr[j + 1] = sortedArr[j]
			j -= 1
		}

		sortedArr[j + 1] = selected
	}

	return sortedArr
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let sortedArr: [Int] = binaryInsertionSort(arr: arr)

print("Sorted Array:")

for a in sortedArr
{
	print(a)
}