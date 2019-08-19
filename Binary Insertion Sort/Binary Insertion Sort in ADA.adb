-- BINARY INSERTION SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure main is
	type arrayOfInteger is array(integer range<>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function binaryInsertionSort(arr: arrayOfInteger) return arrayOfInteger is -- -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		sortedArr: arrayOfInteger := arr;
		j, selected, first, last, mid: integer;
	begin
		for i in 1..sortedArr'Length - 1 loop
			selected := sortedArr(i);
			first := 0;
			last := i - 1;

			while first <= last loop
				mid := (first + last) / 2;

				if selected > sortedArr(mid) then
					first := mid + 1;
				else
					last := mid - 1;
				end if;
			end loop;

			if selected > sortedArr(mid) then
				mid := mid + 1;
			end if;

			j := i - 1;

			while j >= mid loop
				sortedArr(j + 1) := sortedArr(j);
				j := j - 1;
			end loop;

			sortedArr(j + 1) := selected;
		end loop;

		return sortedArr;
	end binaryInsertionSort;

	-- code only to call and test the sort function
	-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: arrayOfInteger(0..9) := binaryInsertionSort(arr);
begin
	Put_Line("Sorted Array:");

	for i in sortedArr'Range loop
		Put_Line(integer'Image(sortedArr(i)));
	end loop;
end main;