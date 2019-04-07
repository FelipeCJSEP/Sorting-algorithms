<?php 
// COCKTAIL SHAKER SORT IN PHP

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function oddEvenSort($arr)
{
	do
	{
		$swapped = false;

		for ($i = 0; $i < count($arr) - 1; $i += 2)
		{
			if ($arr[$i] > $arr[$i + 1])
			{
				$swap = $arr[$i];
				$arr[$i] = $arr[$i + 1];
				$arr[$i + 1] = $swap;
				$swapped = true;
			}
		}

		for ($i = 1; $i < count($arr) - 1; $i += 2)
		{
			if ($arr[$i] > $arr[$i + 1])
			{
				$swap = $arr[$i];
				$arr[$i] = $arr[$i + 1];
				$arr[$i + 1] = $swap;
				$swapped = true;
			}
		}
	}
	while ($swapped);

	return $arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
$arr = array(5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
$arrSorted = oddEvenSort($arr);

echo "Array Sorted:\n";

foreach ($arrSorted as $a)
	echo "$a\n";
?>