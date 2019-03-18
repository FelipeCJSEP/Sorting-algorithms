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
for ($i = 0; $i < 10; $i++)
	$arr[$i] = readline();

$arrSorted = bubbleSort($arr);

echo "\nArray Sorted:\n";

foreach ($arrSorted as $a)
	echo "$a\n";

?>