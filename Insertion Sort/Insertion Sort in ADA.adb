-- INSERTION SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure main is
	type arrayOfInteger is array(integer range<>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function insertionSort(arr: arrayOfInteger) return arrayOfInteger is -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		sortedArr: arrayOfInteger := arr;
		j, swap: integer;
	begin
		for i in 1..sortedArr'Length - 1 loop
			j := i;

			while j > 0 loop
				if sortedArr(j) < sortedArr(j - 1) then
					swap := sortedArr(j);
					sortedArr(j) := sortedArr(j - 1);
					sortedArr(j - 1) := swap;
					j := j - 1;
				else
					j := 0;
				end if;
			end loop;
		end loop;

		return sortedArr;
	end insertionSort;

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: arrayOfInteger(0..9) := insertionSort(arr);
begin
	Put_Line("Sorted Array");

	for i in sortedArr'Range loop
		Put_Line(integer'Image(sortedArr(i)));
	end loop;
end main;