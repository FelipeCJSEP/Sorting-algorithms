// INSERTION SORT IN PASCAL

program Bubble_Sort;

type
	arrayOfInteger = array of integer;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function insertionSort(arr: arrayOfInteger): arrayOfInteger; // arrayOfInteger was set in "type" // arrayOfInteger foi definido em "type"
var
	i, j, swap: integer;
begin
	for i := 1 to length(arr) - 1 do
	begin
		j := i;

		while (j > 0) and (arr[j] < arr[j - 1]) do
		begin
			swap := arr[j];
			arr[j] := arr[j - 1];
			arr[j - 1] := swap;
			j := j - 1;
		end;
	end;

	insertionSort := arr;
end;

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
var
	arr: array[0..9] of integer = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: array of integer;
	a: integer;
begin
	sortedArr := insertionSort(arr);

	writeln('Sorted Array');

	for a in sortedArr do
		writeln(a);
end.
