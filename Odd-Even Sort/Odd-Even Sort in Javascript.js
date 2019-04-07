// ODD-EVEN SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function oddEvenSort(arr)
{
	let swapped;

	do
	{
		swapped = false;

		for (let i = 0; i < arr.length - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				const swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = true;
			}
		}

		for (let i = 1; i < arr.length - 1; i += 2)
		{
			if (arr[i] > arr[i + 1])
			{
				const swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = true;
			}
		}
	}
	while (swapped);

	return arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
let arrSorted = oddEvenSort(arr);

print('Array Sorted:');

for (let i in arrSorted)
	print(arrSorted[i]);