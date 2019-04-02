// GNOME SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func gnomeSort(arr: [Int]) -> [Int]
{
	var arrSorted: [Int] = arr

	for i in 1...arrSorted.count - 1
	{
		var j = i

		while (j > 0 && arrSorted[j] < arrSorted[j - 1])
		{
			(arrSorted[j], arrSorted[j - 1]) = (arrSorted[j - 1], arrSorted[j])
			j -= 1
		}
	}

	return arrSorted
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr: [Int] = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0]
let arrSorted: [Int] = gnomeSort(arr: arr)

print("Array Sorted:")

for a in arrSorted
{
	print(a)
}