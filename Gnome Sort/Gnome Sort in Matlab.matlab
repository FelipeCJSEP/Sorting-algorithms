% GNOME SORT IN MATLAB

% function algorithm that returns the sorted array
% algoritmo da função que retorna o array ordenado
function gs = gnomeSort(arr)
	i = 0;

	while i <= length(arr)
		if i > 1 && arr(i) < arr(i - 1)
			arr([i i - 1]) = arr([i - 1 i]);
			i--;
		else
			i++;
		end
	end

	gs = arr;
end

% code only to call and test the sort function
% código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
arrSorted = gnomeSort(arr);

disp("Array Sorted:");

for i = 1: length(arrSorted)
	disp(arrSorted(i));
end