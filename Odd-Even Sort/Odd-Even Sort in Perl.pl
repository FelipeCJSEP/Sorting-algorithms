# ODD-EVEN SORT IN PERL

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
sub oddEvenSort
{
	@arr = @_;

	do
	{
		$swapped = 0;

		for ($i = 0; $i < scalar @arr - 1; $i += 2)
		{
			if ($arr[$i] > $arr[$i + 1])
			{
				@arr[$i, $i + 1] = @arr[$i + 1, $i];
				$swapped = 1;
			}
		}

		for ($i = 1; $i < scalar @arr - 1; $i += 2)
		{
			if ($arr[$i] > $arr[$i + 1])
			{
				@arr[$i, $i + 1] = @arr[$i + 1, $i];
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
@sortedArr = oddEvenSort @arr;

print "Sorted Array:\n";

foreach $a (@sortedArr)
{
	print "$a\n";
}