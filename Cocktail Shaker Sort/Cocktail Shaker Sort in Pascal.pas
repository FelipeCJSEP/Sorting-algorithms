// COCKTAIL SHAKER SORT IN PASCAL

program Cocktail_Shaker_Sort;

type
	arrayOfInteger = array of integer;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function cocktailShakerSort(arr: arrayOfInteger): arrayOfInteger; // arrayOfInteger was set in "type" // arrayOfInteger foi definido em "type"
var
	i, beginIndex, endIndex, swap: integer;
	swapped: boolean;
begin
	beginIndex := 0;
	endIndex := length(arr);

	repeat
		swapped := false;
		endIndex := endIndex - 1;

		for i := beginIndex to endIndex - 1 do
		begin
			if arr[i] > arr[i + 1] then
			begin
				swap := arr[i];
				arr[i] := arr[i + 1];
				arr[i + 1] := swap;
				swapped := true;
			end;
		end;

		if swapped then
		begin
			swapped := false;
			beginIndex := beginIndex + 1;

			for i := endIndex - 1 downto beginIndex do
			begin
				if arr[i] < arr[i - 1] then
				begin
					swap := arr[i];
					arr[i] := arr[i - 1];
					arr[i - 1] := swap;
					swapped := true;
				end;
			end;
		end;
	until not swapped;

	cocktailShakerSort := arr;
end;

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
var
	arr: array[0..9] of integer = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: array of integer;
	a: integer;
begin
	sortedArr := cocktailShakerSort(arr);

	writeln('Sorted Array');

	for a in sortedArr do
		writeln(a);
end.