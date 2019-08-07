// GNOME SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func gnomeSort(arr: [Int]) -> [Int]
{
	var sortedArr: [Int] = arr

	var i = 0

	while (i < sortedArr.count)
	{
		if (i > 0 && sortedArr[i] < sortedArr[i - 1])
		{
			(sortedArr[i], sortedArr[i - 1]) = (sortedArr[i - 1], sortedArr[i])
			i -= 1
		}
		else
		{
			i += 1
		}
	}

	return sortedArr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let sortedArr: [Int] = gnomeSort(arr: arr)

print("Sorted Array:")

for a in sortedArr
{
	print(a)
}