// BUBBLE SORT IN PASCAL

program Bubble_Sort;

type
	arrayOfInteger = array of integer;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function bubbleSort(arr: arrayOfInteger): arrayOfInteger; // arrayOfInteger was set in "type" // arrayOfInteger foi definido em "type"
var
	i, j, swap: integer;
begin
	for i := 0 to length(arr) - 2 do
	begin
		for j := i + 1 to length(arr) - 1 do
		begin
			if arr[i] > arr[j] then
			begin
				swap := arr[i];
				arr[i] := arr[j];
				arr[j] := swap;
			end;
		end;
	end;

	bubbleSort := arr;
end;

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
var
	arr: array[0..9] of integer = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	arrSorted: array of integer;
	a: integer;
begin

	arrSorted := bubbleSort(arr);

	writeln('Array Sorted');

	for a in arrSorted do
		writeln(a);
end.