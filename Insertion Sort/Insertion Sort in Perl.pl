# INSERTION SORT IN PERL

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
sub insertionSort
{
	@arr = @_;

	for ($i = 1; $i < scalar @arr; $i++)
	{
		$j = $i;

		while ($j > 0 and $arr[$j] < $arr[$j - 1])
		{
			@arr[$j, $j - 1] = @arr[$j - 1, $j];
			$j--;
		}
	}

	return @arr;
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
@arr = (5, 2, -3, 10, 23, 99, -1, 7, 93, 0);
@arrSorted = insertionSort @arr;

print "Array Sorted:\n";

foreach $a (@arrSorted)
{
	print "$a\n";
}