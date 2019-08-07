-- ODD-EVEN SORT IN ADA

with Ada.Text_IO; use Ada.Text_IO;

procedure Odd_Even_Sort is
	type arrayOfInteger is array(integer range <>) of integer;

	-- function algorithm that returns the sorted array
	-- algoritmo da função que retorna o array ordenado
	function oddEvenSort(arr: arrayOfInteger) return arrayOfInteger is -- "arrayOfInteger" was set in "type" -- "arrayOfInteger" foi definido em "type"
		sortedArr: arrayOfInteger := arr;
		swap, i: integer;
		swapped: boolean;
	begin
		loop
			swapped := false;
			i := 0;

			while i < sortedArr'Length - 1 loop
				if sortedArr(i) > sortedArr(i + 1) then
					swap := sortedArr(i);
					sortedArr(i) := sortedArr(i + 1);
					sortedArr(i + 1) := swap;
					swapped := true;
				end if;

				i := i + 2;
			end loop;

			i := 1;

			while i < sortedArr'Length - 1 loop
				if sortedArr(i) > sortedArr(i + 1) then
					swap := sortedArr(i);
					sortedArr(i) := sortedArr(i + 1);
					sortedArr(i + 1) := swap;
					swapped := true;
				end if;

				i := i + 2;
			end loop;

			exit when not swapped;
		end loop;

		return sortedArr;
	end oddEvenSort;

-- code only to call and test the sort function
-- código apenas para chamar e testar a função de ordenação
	arr: arrayOfInteger(0..9) := (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
	sortedArr: arrayOfInteger(0..9) := oddEvenSort(arr);
begin
	Put_Line("Sorted Array");

	for i in sortedArr'Range loop
		Put_Line(integer'Image(sortedArr(i)));
	end loop;
end Odd_Even_Sort;