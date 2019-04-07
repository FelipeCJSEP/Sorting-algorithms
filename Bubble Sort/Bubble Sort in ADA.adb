-- BUBBLE SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure Bubble_Sort is
	type arrayOfInteger is array(integer range <>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function bubbleSort(arr: arrayOfInteger) return arrayOfInteger is -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		n, swap: integer;
		swapped: boolean;
		arrSorted: arrayOfInteger := arr;
	begin
		n := arrSorted'Length;

		loop
			swapped := false;
			n := n - 1;

			for i in 0..n - 1 loop
				if arrSorted(i) > arrSorted(i + 1) then
					swap := arrSorted(i);
					arrSorted(i) := arrSorted(i + 1);
					arrSorted(i + 1) := swap;
					swapped := true;
				end if;
			end loop;

			exit when not swapped;
		end loop;

		return arrSorted;
	end bubbleSort;

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	arrSorted: arrayOfInteger(0..9) := bubbleSort(arr);
begin
	Put_Line("Array Sorted");

	for i in arrSorted'Range loop
		Put_Line(integer'Image(arrSorted(i)));
	end loop;
end Bubble_Sort;