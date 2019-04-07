// COCKTAIL SHAKER SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function cocktailShakerSort(arr)
{
	let beginIndex = 0;
	let endIndex = arr.length;
	let swapped;

	do
	{
		swapped = false;
		endIndex--;

		for (let i = beginIndex; i < endIndex; i++)
		{
			if (arr[i] > arr[i + 1])
			{
				let swap = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = swap;
				swapped = true;
			}
		}

		if (swapped)
		{
			swapped = false;
			beginIndex++;

			for (let i = endIndex - 1; i >= beginIndex; i--)
			{
				if (arr[i] < arr[i - 1])
				{
					let swap = arr[i];
					arr[i] = arr[i - 1];
					arr[i - 1] = swap;
					swapped = true;
				}
			}
		}
	}
	while (swapped);

	return arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
let arrSorted = cocktailShakerSort(arr);

print('Array Sorted:');

for (let i in arrSorted)
	print(arrSorted[i]);