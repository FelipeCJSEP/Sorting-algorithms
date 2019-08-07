// INSERTION SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func insertionSort(arr: [Int]) -> [Int]
{
	var sortedArr: [Int] = arr

	for i in 1...sortedArr.count - 1
	{
		var j = i

		while (j > 0 && sortedArr[j] < sortedArr[j - 1])
		{
			(sortedArr[j], sortedArr[j - 1]) = (sortedArr[j - 1], sortedArr[j])
			j -= 1
		}
	}

	return sortedArr
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let sortedArr: [Int] = insertionSort(arr: arr)

print("Sorted Array:")

for a in sortedArr
{
	print(a)
}