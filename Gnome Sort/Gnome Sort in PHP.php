<?php 
// GNOME SORT IN PHP

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
function gnomeSort($arr)
{
	for ($i = 1; $i < count($arr); $i++)
	{
		$j = $i;

		while ($j > 0 and $arr[$j] < $arr[$j - 1])
		{
			$swap = $arr[$j];
			$arr[$j] = $arr[$j - 1];
			$arr[$j - 1] = $swap;
			$j--;
		}
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