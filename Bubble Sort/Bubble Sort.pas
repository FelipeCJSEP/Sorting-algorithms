// BUBBLE SORT IN PASCAL

program Bubble_Sort;

const
	length = 9; // constant to set array size // constante para definir o tamanho do array

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
type
	arrayOfInteger = array of integer;

function bubbleSort(arr: arrayOfInteger): arrayOfInteger;
var
	i, j, swap: integer;
begin
	for i := 0 to length - 1 do
	begin
		for j := i + 1 to length do
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
	arr: array[0..length] of integer;
	arrSorted: array of integer;
	i: integer;
begin
	for i := 0 to length do
		readln(arr[i]);

	arrSorted := bubbleSort(arr);

	writeln(' ');
	writeln('Array Sorted');

	for i in arrSorted do
		writeln(i);
end.