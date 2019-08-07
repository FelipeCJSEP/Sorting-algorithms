    
// GNOME SORT IN PASCAL

program Bubble_Sort;

type
	arrayOfInteger = array of integer;

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function gnomeSort(arr: arrayOfInteger): arrayOfInteger; // arrayOfInteger was set in "type" // arrayOfInteger foi definido em "type"
var
	i, swap: integer;
begin
	i := 1;

	while i < length(arr) do
	begin
		if (i > 0) and (arr[i] < arr[i - 1]) then
		begin
			swap := arr[i];
			arr[i] := arr[i - 1];
			arr[i - 1] := swap;
			i := i - 1;
		end
		else
			i := i + 1;
	end;

	gnomeSort := arr;
end;

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
var
	arr: array[0..9] of integer = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: array of integer;
	a: integer;
begin
	sortedArr := gnomeSort(arr);

	writeln('Sorted Array');

	for a in sortedArr do
		writeln(a);
end.