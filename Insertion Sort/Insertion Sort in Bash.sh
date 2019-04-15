#!/bin/bash
# INSERTION SORT IN BASH

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
insertionSort()
{
	local arr=("$@")

	for i in `seq 1 $((${#arr[@]} - 1))`; do
		local j=$i

		while [[ $j -gt 0 ]] && ((${arr[$j]} < ${arr[$j-1]})); do
			swap=${arr[$j]}
			arr[$j]=${arr[$j-1]}
			arr[$j-1]=$swap
			j=$(($j-1))
		done
	done

	echo ${arr[@]}
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr=(5 2 -3 10 23 99 -1 7 93 0)
arrSorted=(`echo $(insertionSort ${arr[@]})`)

echo "Array Sorted"

for a in ${arrSorted[@]}; do
	echo $a
done