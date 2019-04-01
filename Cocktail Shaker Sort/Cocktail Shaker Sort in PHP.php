<?php 
// COCKTAIL SHAKER SORT IN PHP

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function cocktailShakerSort($arr)
{
	$beginIndex = 0;
	$endIndex = count($arr);

	do
	{
		$swapped = false;
		$endIndex--;

		for ($i = $beginIndex; $i < $endIndex; $i++)
		{
			if ($arr[$i] > $arr[$i + 1])
			{
				$swap = $arr[$i];
				$arr[$i] = $arr[$i + 1];
				$arr[$i + 1] = $swap;
				$swapped = true;
			}
		}

		if ($swapped)
		{
			$swapped = false;
			$beginIndex++;

			for ($i = $endIndex - 1; $i >= $beginIndex; $i--)
			{
				if ($arr[$i] < $arr[$i - 1])
				{
					$swap = $arr[$i];
					$arr[$i] = $arr[$i - 1];
					$arr[$i - 1] = $swap;
					$swapped = true;
				}
			}
		}
	}
	while ($swapped);

	return $arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
$arr = array(5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
$arrSorted = cocktailShakerSort($arr);

echo "Array Sorted:\n";

foreach ($arrSorted as $a)
	echo "$a\n";
?>