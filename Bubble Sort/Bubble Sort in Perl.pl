# BUBBLE SORT IN PERL

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
sub bubbleSort
{
	@arr = @_;
	$n = scalar @arr;

	do
	{
		$swapped = 0;
		$n--;

		for ($i = 0; $i < $n; $i++)
		{
			if ($arr[$i] > $arr[$i + 1])
			{
				$swap = $arr[$i];
				$arr[$i] = $arr[$i + 1];
				$arr[$i + 1] = $swap;
				$swapped = 1;
			}
		}
	}
	while ($swapped == 1);

	return @arr;
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
@arr = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
@arrSorted = bubbleSort @arr;

print "Array Sorted:\n";

foreach $a (@arrSorted)
{
	print "$a\n";
}