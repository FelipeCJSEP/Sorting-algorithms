#!/bin/bash
# ODD-EVEN SORT IN BASH

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
oddEvenSort()
{
	local arr=("$@")

	while true; do
		local swapped=false

		for i in `seq 0 2 $((${#arr[@]} - 2))`; do
			if ((${arr[$i]} > ${arr[$i+1]})); then
				local swap=${arr[$i]}
				arr[$i]=${arr[$i+1]}
				arr[$i+1]=$swap
				swapped=true
			fi
		done

		for i in `seq 1 2 $((${#arr[@]} - 2))`; do
			if ((${arr[$i]} > ${arr[$i+1]})); then
				local swap=${arr[$i]}
				arr[$i]=${arr[$i+1]}
				arr[$i+1]=$swap
				swapped=true
			fi
		done

		[ $swapped = false ] && break
	done

	echo ${arr[@]}
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr=(5 2 -3 10 23 99 -1 7 93 0)
sortedArr=(`echo $(oddEvenSort ${arr[@]})`)

echo "Sorted Array"

for a in ${sortedArr[@]}; do
	echo $a
done