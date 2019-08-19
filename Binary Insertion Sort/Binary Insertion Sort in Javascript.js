// BINARY INSERTION SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function binaryInsertionSort(arr)
{
	for (let i = 1; i < arr.length; i++)
	{
		let selected = arr[i], first = 0, last = i - 1, mid, j;

		while (first <= last)
		{
			mid = ~~((first + last) / 2);

			if (selected > arr[mid])
				first = mid + 1;
			else
				last = mid - 1;
		}

		if (selected > arr[mid])
			mid++;

		for (j = i - 1; j >= mid; j--)
			arr[j + 1] = arr[j];

		arr[j + 1] = selected;
	}

	return arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
let sortedArr = binaryInsertionSort(arr);

print('Sorted Array:');

for (let i in sortedArr)
	print(sortedArr[i]);