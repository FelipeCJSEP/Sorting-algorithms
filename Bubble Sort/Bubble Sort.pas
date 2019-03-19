// BUBBLE SORT IN PASCAL

program Bubble_Sort;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
type
	arrayOfInteger = array of integer;

function bubbleSort(arr: arrayOfInteger): arrayOfInteger;
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

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
var
	arr: array[0..9] of integer;
	arrSorted: array of integer;
	a: integer;
begin
	arr[0] := 5;
	arr[1] := 2;
	arr[2] := -3;
	arr[3] := 10;
	arr[4] := 23;
	arr[5] := 99;
	arr[6] := -1;
	arr[7] := 7;
	arr[8] := 93;
	arr[9] := 0;

	arrSorted := bubbleSort(arr);

	writeln('Array Sorted');

	for a in arrSorted do
		writeln(a);
end.