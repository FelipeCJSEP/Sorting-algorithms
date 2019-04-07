// ODD-EVEN SORT IN PASCAL

program Cocktail_Shaker_Sort;

type
	arrayOfInteger = array of integer;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function oddEvenSort(arr: arrayOfInteger): arrayOfInteger; // arrayOfInteger was set in "type" // arrayOfInteger foi definido em "type"
var
	i, swap: integer;
	swapped: boolean;
begin
	repeat
		swapped := false;
		i := 0;

		while i < length(arr) - 1 do
		begin
			if arr[i] > arr[i + 1] then
			begin
				swap := arr[i];
				arr[i] := arr[i + 1];
				arr[i + 1] := swap;
				swapped := true;
			end;

			i := i + 2;
		end;

		i := 1;

		while i < length(arr) - 1 do
		begin
			if arr[i] > arr[i + 1] then
			begin
				swap := arr[i];
				arr[i] := arr[i + 1];
				arr[i + 1] := swap;
				swapped := true;
			end;

			i := i + 2;
		end;
	until not swapped;

	oddEvenSort := arr;
end;

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
var
	arr: array[0..9] of integer = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	arrSorted: array of integer;
	a: integer;
begin
	arrSorted := oddEvenSort(arr);

	writeln('Array Sorted');

	for a in arrSorted do
		writeln(a);
end.