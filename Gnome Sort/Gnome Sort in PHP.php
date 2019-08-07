<?php 
// GNOME SORT IN PHP

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function gnomeSort($arr)
{
	$i = 0;

	while ($i < count($arr))
	{
		if ($i > 0 and $arr[$i] < $arr[$i - 1])
		{
			$swap = $arr[$i];
			$arr[$i] = $arr[$i - 1];
			$arr[$i - 1] = $swap;
			$i--;
		}
		else
			$i++;
	}

	return $arr;
}

// code only to call and test the sort function
// código apenas para chamar e testar a função de ordenação
$arr = array(5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
$arrSorted = gnomeSort($arr);

echo "Array Sorted:\n";

foreach ($arrSorted as $a)
	echo "$a\n";
?>