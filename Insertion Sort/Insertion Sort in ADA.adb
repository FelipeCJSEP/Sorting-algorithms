-- INSERTION SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure main is
	type arrayOfInteger is array(integer range<>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function insertionSort(arr: arrayOfInteger) return arrayOfInteger is -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		arrSorted: arrayOfInteger := arr;
		j, swap: integer;
	begin
		for i in 1..arrSorted'Length - 1 loop
			j := i;

			while j > 0 loop
				if arrSorted(j) < arrSorted(j - 1) then
					swap := arrSorted(j);
					arrSorted(j) := arrSorted(j - 1);
					arrSorted(j - 1) := swap;
					j := j - 1;
				else
					j := 0;
				end if;
			end loop;
		end loop;

		return arrSorted;
	end insertionSort;

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	arrSorted: arrayOfInteger(0..9) := insertionSort(arr);
begin
	Put_Line("Array Sorted");

	for i in arrSorted'Range loop
		Put_Line(integer'Image(arrSorted(i)));
	end loop;
end main;