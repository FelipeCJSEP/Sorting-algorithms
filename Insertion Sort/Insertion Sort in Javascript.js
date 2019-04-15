// INSERTION SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function insertionSort(arr)
{
	for (let i = 1; i < arr.length; i++)
	{
		let j = i;

		while (j > 0 && arr[j] < arr[j - 1])
		{
			const swap = arr[j];
			arr[j] = arr[j - 1];
			arr[j - 1] = swap;
			j--;
		}
	}

	return arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
let arrSorted = insertionSort(arr);

print('Array Sorted:');

for (let i in arrSorted)
	print(arrSorted[i]);