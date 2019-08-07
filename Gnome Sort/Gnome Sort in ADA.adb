-- GNOME SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure main is
	type arrayOfInteger is array(integer range<>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function gnomeSort(arr: arrayOfInteger) return arrayOfInteger is -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		sortedArr: arrayOfInteger := arr;
		i, swap: integer;
	begin
		i := 0;

		while i < sortedArr'Length loop
			if i > 0 then
				if sortedArr(i) < sortedArr(i - 1) then
					swap := sortedArr(i);
					sortedArr(i) := sortedArr(i - 1);
					sortedArr(i - 1) := swap;
					i := i - 1;
				else
					i := i + 1;
				end if;
			else
				i := i + 1;
			end if;

		end loop;

		return sortedArr;
	end gnomeSort;

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: arrayOfInteger(0..9) := gnomeSort(arr);
begin
	Put_Line("Sorted Array");

	for i in sortedArr'Range loop
		Put_Line(integer'Image(sortedArr(i)));
	end loop;
end main;