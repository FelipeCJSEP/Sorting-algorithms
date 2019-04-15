// GNOME SORT IN JAVASCRIPT

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function gnomeSort(arr)
{
	let i = 0;

	while (i < arr.length)
	{
		if (i > 0 && arr[i] < arr[i - 1])
		{
			const swap = arr[i];
			arr[i] = arr[i - 1];
			arr[i - 1] = swap;
			i--;
		}
		else
			i++;
	}

	return arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
let arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
let arrSorted = gnomeSort(arr);

print('Array Sorted:');

for (let i in arrSorted)
	print(arrSorted[i]);