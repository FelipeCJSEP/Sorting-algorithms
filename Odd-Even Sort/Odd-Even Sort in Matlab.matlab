% ODD-EVEN SORT IN MATLAB

% function algorithm that returns the sorted array
% algoritmo da função que retorna o array ordenado
function oes = oddEvenSort(arr)
	while true
		swapped = false;

		for i = 1: 2: length(arr) - 1
			if arr(i) > arr(i + 1)
				arr([i i + 1]) = arr([i + 1 i]);
				swapped = true;
			end
		end

		for i = 2: 2: length(arr) - 1
			if arr(i) > arr(i + 1)
				arr([i i + 1]) = arr([i + 1 i]);
				swapped = true;
			end
		end

		if !swapped
			break;
		end
	end

	oes = arr;
end

% code only to call and test the sort function
% código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
arrSorted = oddEvenSort(arr);

disp("Array Sorted:");

for i = 1: length(arrSorted)
	disp(arrSorted(i));
end