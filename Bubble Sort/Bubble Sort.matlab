% BUBBLE SORT IN MATLAB

% function algorithm that returns the sorted array
% algoritmo da função que retorna o array ordenado
function bs = bubbleSort(arr)
	for i = 1: length(arr) - 1
		for j = i + 1: length(arr)
			if arr(i) > arr(j)
				swap = arr(i);
				arr(i) = arr(j);
				arr(j) = swap;
			end
		end
	end
	bs = arr;
end

% code only to call and test the sort function
% código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
arrSorted = bubbleSort(arr)

disp("Array Sorted:");

for i = 1: length(arrSorted)
	disp(arrSorted(i));
end