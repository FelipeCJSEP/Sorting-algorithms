% BUBBLE SORT IN MATLAB

% function algorithm that returns the sorted array
% algoritmo da função que retorna o array ordenado
function bs = bubbleSort(arr)
	n = length(arr);
	
	while (true)
		swapped = false;
		n--;

		for i = 1: n
			if arr(i) > arr(i + 1)
				arr([i i + 1]) = arr([i + 1 i]);
				swapped = true;
			end
		end

		if (!swapped)
			break;
		end;
	end
	
	bs = arr;
end

% code only to call and test the sort function
% código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
arrSorted = bubbleSort(arr);

disp("Array Sorted:");

for i = 1: length(arrSorted)
	disp(arrSorted(i));
end