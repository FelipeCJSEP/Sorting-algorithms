// BINARY INSERTION SORT IN PASCAL

program Binary_Insertion_Sort;

type
	arrayOfInteger = array of integer;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function binaryInsertionSort(arr: arrayOfInteger): arrayOfInteger; // arrayOfInteger was set in "type" // arrayOfInteger foi definido em "type"
var
	i, selected, first, last, mid, j: integer;
begin
	for i := 1 to length(arr) - 1 do
	begin
		selected := arr[i];
		first := 0;
		last := i - 1;

		while first <= last do
		begin
			mid := (first + last) div 2;

			if selected > arr[mid] then
				first := mid + 1
			else
				last := mid - 1;
		end;

		if selected > arr[mid] then
			mid := mid + 1;

		j := i - 1;

		while j >= mid do
		begin
			arr[j + 1] := arr[j];
			j := j - 1;
		end;

		arr[j + 1] := selected;
	end;

	binaryInsertionSort := arr;
end;

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
var
	arr: array[0..9] of integer = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: array of integer;
	a: integer;
begin
	sortedArr := binaryInsertionSort(arr);

	writeln('Sorted Array');

	for a in sortedArr do
		writeln(a);
end.
