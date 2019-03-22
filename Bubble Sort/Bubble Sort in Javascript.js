// BUBBLE SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function bubbleSort(arr)
{
	for (let i = 0; i < arr.length - 1; i++)
	{
		for (let j = i + 1; j < arr.length; j++)
		{
			if (arr[i] > arr[j])
			{
				let swap = arr[i];
				arr[i] = arr[j];
				arr[j] = swap;
			}
		}
	}

	return arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
let arrSorted = bubbleSort(arr);

print('Array Sorted:\n');

for (let i in arrSorted)
	print(arrSorted[i]);