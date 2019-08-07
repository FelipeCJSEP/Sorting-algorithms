-- SELECTION SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure Selection_Sort is
	type arrayOfInteger is array(integer range <>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function selectionSort(arr: arrayOfInteger) return arrayOfInteger is -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		smaller, swap: integer;
		sortedArr: arrayOfInteger := arr;
	begin
		for i in 0..sortedArr'Length - 2 loop
			smaller := i;

			for j in i + 1..sortedArr'Length - 1 loop
				if sortedArr(j) < sortedArr(smaller) then
					smaller := j;
				end if;
			end loop;

			if smaller > i then
				swap := sortedArr(i);
				sortedArr(i) := sortedArr(smaller);
				sortedArr(smaller) := swap;
			end if;
		end loop;

		return sortedArr;
	end selectionSort;

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: arrayOfInteger(0..9) := selectionSort(arr);
begin
	Put_Line("Sorted Array");

	for i in sortedArr'Range loop
		Put_Line(integer'Image(sortedArr(i)));
	end loop;
end Selection_Sort;