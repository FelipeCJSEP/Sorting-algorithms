# COCKTAIL SHAKER SORT IN PERL

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
sub cocktailShakerSort
{
	@arr = @_;
	$beginIndex = 0;
	$endIndex = scalar @arr;

	do
	{
		$swapped = 0;
		$endIndex--;

		for ($i = $beginIndex; $i < $endIndex; $i++)
		{
			if ($arr[$i] > $arr[$i + 1])
			{
				@arr[$i, $i + 1] = @arr[$i + 1, $i];
				$swapped = 1;
			}
		}

		if ($swapped == 1)
		{
			$swapped = 0;
			$beginIndex++;

			for ($i = $endIndex - 1; $i >= $beginIndex; $i--)
			{
				if ($arr[$i] < $arr[$i - 1])
				{
					@arr[$i, $i - 1] = @arr[$i - 1, $i];
					$swapped = 1;
				}
			}
		}
	}
	while ($swapped == 1);

	return @arr;
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
@arr = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
@arrSorted = cocktailShakerSort @arr;

print "Array Sorted:\n";

foreach $a (@arrSorted)
{
	print "$a\n";
}