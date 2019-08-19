% BINARY INSERTION SORT IN MATLAB

% function algorithm that returns the sorted array
% algoritmo da função que retorna o array ordenado
function bis = binaryInsertionSort(arr)
	for i = 2: length(arr)
		selected = arr(i);
		first = 1;
		last = i - 1;

		while first <= last
			mid = idivide(first + last, 2);

			if selected > arr(mid)
				first = mid + 1;
			else
				last = mid - 1;
			end
		end

		if selected > arr(mid)
			mid++;
		end

		j = i - 1;
		
		while j >= mid
			arr(j + 1) = arr(j);
			j--;
		end

		arr(j + 1) = selected;
	end

	bis = arr;
end

% code only to call and test the sort function
% código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
sortedArr = binaryInsertionSort(arr);

disp("Sorted Array:");

for i = 1: length(sortedArr)
	disp(sortedArr(i));
end