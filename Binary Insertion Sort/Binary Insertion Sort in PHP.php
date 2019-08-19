<?php 
// BINARY INSERTION SORT IN PHP

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function binaryInsertionSort($arr)
{
	for ($i = 1; $i < count($arr); $i++)
	{
		$selected = $arr[$i];
		$first = 0;
		$last = $i - 1;

		while ($first <= $last)
		{
			$mid = intdiv($first + $last, 2);

			if ($selected > $arr[$mid])
				$first = $mid + 1;
			else
				$last = $mid - 1;
		}

		if ($selected > $arr[$mid])
			$mid++;

		for ($j = $i - 1; $j >= $mid; $j--)
			$arr[$j + 1] = $arr[$j];

		$arr[$j + 1] = $selected;
	}

	return $arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
$arr = array(5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
$sortedArr = binaryInsertionSort($arr);
echo "Sorted Array:\n";
foreach ($sortedArr as $a)
	echo "$a\n";
?>