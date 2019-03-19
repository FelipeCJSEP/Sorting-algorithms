# BUBBLE SORT IN PERL

# function algorithm that returns the sorted array
# algoritmo da funcao que retorna o array ordenado
sub bubbleSort
{
	@arr = @_;

	for ($i = 0; $i < scalar @arr - 1; $i++)
	{
		for ($j = $i + 1; $j < scalar @arr; $j++)
		{
			if ($arr[$i] > $arr[$j])
			{
				$swap = $arr[$i];
				$arr[$i] = $arr[$j];
				$arr[$j] = $swap;
			}
		}
	}

	return @arr;
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
for ($i = 0; $i < 10; $i++)
{
	$arr[$i] = <>;
}

@arrSorted = bubbleSort @arr;

print "\nArray Sorted:\n";

foreach $a (@arrSorted)
{
	print $a;
}