% GNOME SORT IN MATLAB

% function algorithm that returns the sorted array
% algoritmo da função que retorna o array ordenado
function gs = gnomeSort(arr)
	for i = 2: length(arr)
		j = i;

		while j > 1 && arr(j) < arr(j - 1)
			arr([j j - 1]) = arr([j - 1 j]);
			j--;
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