<?php
// BUBBLE SORT IN PHP

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function bubbleSort($arr)
{
	$n = count($arr);

	do
	{
		$swapped = false;
		$n--;

		for ($i = 0; $i < $n; $i++)
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
$sortedArr = bubbleSort($arr);

echo "Sorted Array:\n";

foreach ($sortedArr as $a)
	echo "$a\n";
?>