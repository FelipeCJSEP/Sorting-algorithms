// BUBBLE SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function bubbleSort(arr)
{
	let n = arr.length;
	let swapped;

	do
	{
		swapped = false;
		n--;

		for (let i = 0; i < n; i++)
		{
			if (arr[i] > arr[i + 1])
			{
				let swap = arr[i];
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
let arrSorted = bubbleSort(arr);

print('Array Sorted:\n');

for (let i in arrSorted)
	print(arrSorted[i]);