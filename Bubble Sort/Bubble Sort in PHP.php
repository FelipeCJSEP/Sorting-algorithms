<?php
// BUBBLE SORT IN PHP

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function bubbleSort($arr)
{
	for ($i = 0; $i < count($arr) - 1; $i++)
	{
		for ($j = $i + 1; $j < count($arr); $j++)
		{
			if ($arr[$i] > $arr[$j])
			{
				$swap = $arr[$i];
				$arr[$i] = $arr[$j];
				$arr[$j] = $swap;
			}
		}
	}

	return $arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
$arr = array(5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
$arrSorted = bubbleSort($arr);

echo "Array Sorted:\n";

foreach ($arrSorted as $a)
	echo "$a\n";

?>