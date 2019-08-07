// GNOME SORT IN SWIFT

import Foundation

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
func gnomeSort(arr: [Int]) -> [Int]
{
	var arrSorted: [Int] = arr

	var i = 0

	while (i < arrSorted.count)
	{
		if (i > 0 && arrSorted[i] < arrSorted[i - 1])
		{
			(arrSorted[i], arrSorted[i - 1]) = (arrSorted[i - 1], arrSorted[i])
			i -= 1
		}
		else
		{
			i += 1
		}
	}

	return arrSorted;
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