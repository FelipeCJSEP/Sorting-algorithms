// SELECTION SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function selectionSort(arr)
{
	for (let i = 0; i < arr.length - 1; i++)
	{
		let smaller = i;

		for (let j = i + 1; j < arr.length; j++)
		{
			if (arr[j] < arr[smaller])
				smaller = j;
		}

		if (smaller > i)
		{
			const swap = arr[i];
			arr[i] = arr[smaller];
			arr[smaller] = swap;
		}
	}

	return arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
let sortedArr = selectionSort(arr);

print('Sorted Array:');

for (let i in sortedArr)
	print(sortedArr[i]);