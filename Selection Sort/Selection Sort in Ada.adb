-- SELECTION SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure Selection_Sort is
	type arrayOfInteger is array(integer range <>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function selectionSort(arr: arrayOfInteger) return arrayOfInteger is -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		smaller, swap: integer;
		arrSorted: arrayOfInteger := arr;
	begin
		for i in 0..arrSorted'Length - 2 loop
			smaller := i;

			for j in i + 1..arrSorted'Length - 1 loop
				if arrSorted(j) < arrSorted(smaller) then
					smaller := j;
				end if;
			end loop;

			if smaller > i then
				swap := arrSorted(i);
				arrSorted(i) := arrSorted(smaller);
				arrSorted(smaller) := swap;
			end if;
		end loop;

		return arrSorted;
	end selectionSort;

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	arrSorted: arrayOfInteger(0..9) := selectionSort(arr);
begin
	Put_Line("Array Sorted");

	for i in arrSorted'Range loop
		Put_Line(integer'Image(arrSorted(i)));
	end loop;
end Selection_Sort;