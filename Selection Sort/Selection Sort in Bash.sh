#!/bin/bash
# SELECTION SORT IN BASH

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
selectionSort()
{
	local arr=("$@")

	for i in `seq 0 $((${#arr[@]} - 2))`; do
		local smaller=$i;

		for j in `seq $(($i + 1)) $((${#arr[@]} - 1))`; do
			if ((${arr[$j]} < ${arr[$smaller]})); then
				smaller=$j
			fi
		done

		if [[ $smaller > $i ]]; then
			local swap=${arr[$i]}
			arr[$i]=${arr[$smaller]}
			arr[$smaller]=$swap
		fi
	done

	echo ${arr[@]}
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr=(5 2 -3 10 23 99 -1 7 93 0)
sortedArr=(`echo $(selectionSort ${arr[@]})`)

echo "Sorted Array"

for a in ${sortedArr[@]}; do
	echo $a
done