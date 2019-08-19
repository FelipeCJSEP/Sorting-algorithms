#!/bin/bash
# BINARY INSERTION SORT IN BASH

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
binaryInsertionSort()
{
	local arr=("$@")

	for i in `seq 1 $((${#arr[@]} - 1))`; do
		local selected=${arr[$i]}
		local first=0
		local last=$(($i-1))

		while (($first <= $last)); do
			local mid=$((($first+$last)/2))

			if (($selected > ${arr[$mid]})); then
				first=$(($mid+1))
			else
				last=$(($mid-1))
			fi
		done
		
		if (($selected > ${arr[$mid]})); then
			mid=$(($mid+1))
		fi

		local j=$(($i-1))

		while (($j >= $mid)); do
			arr[$j+1]=${arr[$j]}
			j=$(($j-1))
		done

		arr[$j+1]=$selected
	done

	echo ${arr[@]}
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr=(5 2 -3 10 23 99 -1 7 93 0)
sortedArr=(`echo $(binaryInsertionSort ${arr[@]})`)

echo "Sorted Array:"

for a in ${sortedArr[@]}; do
	echo $a
done