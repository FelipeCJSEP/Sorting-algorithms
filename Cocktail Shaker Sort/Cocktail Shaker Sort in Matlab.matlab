% COCKTAIL SHAKER SORT IN MATLAB

% function algorithm that returns the sorted array
% algoritmo da função que retorna o array ordenado
function css = cocktailShakerSort(arr)
	beginIndex = 1;
	endIndex = length(arr);

	while (true)
		swapped = false;
		endIndex--;

		for i = beginIndex: endIndex
			if arr(i) > arr(i + 1)
				arr([i i + 1]) = arr([i + 1 i]);
				swapped = true;
			end
		end

		if (swapped)
			swapped = false;
			beginIndex++;

			for i = endIndex: -1: beginIndex 
				if arr(i) < arr(i - 1)
					arr([i i - 1]) = arr([i - 1 i]);
					swapped = true;
				end
			end
		end

		if (!swapped)
			break;
		end
	end

	css = arr;
end

% code only to call and test the sort function
% código apenas para chamar e testar a função de ordenação
arr = [5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
arrSorted = cocktailShakerSort(arr)

disp("Array Sorted:");

for i = 1: length(arrSorted)
	disp(arrSorted(i));
end